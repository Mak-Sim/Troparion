function [acc_rel, acc_abs, TP, FP, FN, TN] = classifier_accuracy_estimation(true_labels,est_labels)

true_labels = true_labels(:);
est_labels  = est_labels(:);

acc_abs = sum(true_labels == est_labels);
acc_rel = acc_abs/length(true_labels);

% TP -- true positive
% FP -- false positive
% FN -- false negative
% TN -- true negative
TP = 0; FP = 0; FN = 0; TN = 0;

for n=1:length(true_labels)
    if true_labels(n)==1
        % true positive case
        if est_labels(n)==1
            TP = TP + 1;
        else
            FN = FN + 1;
        end
    else
        % true negative case
        if est_labels(n)==1
            FP = FP + 1;
        else
            TN = TN + 1;
        end
    end
end

end

