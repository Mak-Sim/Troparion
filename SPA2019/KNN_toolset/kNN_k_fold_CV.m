function [acc_bar, acc_sd, sens_bar, sens_sd,spec_bar, spec_sd]...
                    = kNN_k_fold_CV(X,y,K,CV_iter)
% Точность классификатора будем определять методом 
% K-вложенной перекрёстной проверки

n = size(X,1);      % Размер обучающей выборки 

acc_cv = zeros(1,CV_iter);
Sens= zeros(1,CV_iter); 
Spec= zeros(1,CV_iter);

for trial =1:CV_iter 
   
    fold_size = round(n/K);
    perm_inds = randperm(n);    
    y_est = zeros(1,n);
    
    for k=1:K
        test_ind = perm_inds(1+fold_size*(k-1):min(fold_size*k,n));
        train_ind = setdiff(perm_inds, test_ind);                
        
        % sorting "health/pathology"
        X_train = X(train_ind,:);
        y_train = y(train_ind);

    
        % preparing test set
        X_test = X(test_ind,:);    
%         y_test = y(test_ind);
    
        % training classifier
        [X_pos,X_neg,inSigma] = KNN_train(X_train,y_train);
        [labels_eval] = KNN_classification(X_pos,X_neg,inSigma, X_test);
        y_est(test_ind) = labels_eval;
                        
    end
    [acc_hat,~,TP,FP,FN,TN] = classifier_accuracy_estimation(y, y_est);
    % Cross-validation estimate of accuracy
    acc_cv(trial) = acc_hat;        

    Sens(trial) = TP/(TP + FN); 
    Spec(trial) = TN/(TN + FP);

%     fprintf('Accuracy: %2.1f+/-%2.1f \n',acc_cv_total(trial)*100,sqrt(acc_cv_var)*100);
% fprintf('Sens = %2.1f \n',Sens(trial)*100);
% fprintf('Spec = %2.1f \n',Spec(trial)*100);
%     fprintf('Trial %d/%d \n',trial, trial_num);
    
end

fprintf('Feature num: %d\n',size(X,2));

acc_bar = mean(acc_cv);
acc_sd = sqrt(1/(CV_iter-1)*sum((acc_cv-acc_bar).^2));
fprintf('Accuracy: %2.1f+/-%2.1f \n',acc_bar*100,acc_sd*100);

sens_bar = mean(Sens);
sens_sd = sqrt(1/(CV_iter-1)*sum((Sens-sens_bar).^2));
fprintf('Sensitivity: %2.1f+/-%2.1f \n',sens_bar*100,sens_sd*100);

spec_bar = mean(Spec);
spec_sd = sqrt(1/(CV_iter-1)*sum((Spec-spec_bar).^2));
fprintf('Specificity: %2.1f+/-%2.1f \n',spec_bar*100,spec_sd*100);

return;

