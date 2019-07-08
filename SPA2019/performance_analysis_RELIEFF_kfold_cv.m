clear all;

addpath('LDA_toolset');

% Preparing data set
% type = 'trop';  % features obtained using Troparion toolset
type = 'praat'; % features obtained using PRAAT system
omit_PVI = false;

if (strcmpi(type,'trop'))
    load('dataset_trop_h.mat');
    load('dataset_trop_p.mat');
    dataset_h = dataset_trop_h;
    dataset_p = dataset_trop_p;
elseif (strcmpi(type,'praat'))
    Dataset_praat;
    dataset_h = dataset_praat_h;
    dataset_p = dataset_praat_p;
    [dataset_p, dataset_h] = age_effect_remove(dataset_p, dataset_h);
else
    error('Unknown source type.');
end

N_h = length(dataset_h);
N_p = length(dataset_p);
m = length(dataset_h(1).feature_vec);

if (omit_PVI)&&(strcmpi(type,'trop'))
    m = m-1;   
end

X = zeros(N_h+N_p,m);
y = zeros(N_h+N_p,1);
% Relabeling and copy
for i=1:N_p    
    X(i,:) = dataset_p(i).feature_vec(1:m);    
    y(i) = 1;
end

N = N_p;
for i=1:N_h
    N = N + 1;
    X(N,:) = dataset_h(i).feature_vec(1:m);
    y(N) = -1;    
end

% Ranking the features using LASSO
% % [B,FitInfo] = lasso(X,y,'Lambda',logspace(-9,-0.25,200));
% % Rank_lasso = [];
% % for i=1:size(B,2)
% %     withdraw_features = find(B(:,i)==0)';
% %     something_new = setdiff(withdraw_features, Rank_lasso);
% %     if isempty(something_new)==0
% %         Rank_lasso = [something_new Rank_lasso];
% %     end
% % end

% Ranking the features using RELIEFF
[Rank_relieff,W] = relieff(X,y,2);

% % Rank_relieff = Rank_lasso;

F_num = length(Rank_relieff);
K = 7;
acc_mean_rff = zeros(1,F_num);
acc_std_rff  = zeros(1,F_num);
for N=1:F_num
    best_N_relieff = Rank_relieff(1:N);
    [acc_mean_rff(N), acc_std_rff(N),~,~,~,~] = LDA_k_fold_CV(X(:,best_N_relieff),y,K);   
    
    fprintf('Number of featues %d/%d \n',N,F_num);
end

%%
figure;
errorbar(1:F_num,acc_mean_rff*100,acc_std_rff*100,'-o','LineWidth',1.5);
xlim([0.5 F_num+0.5]);
ylim([60 95]);
xlabel('Number of features included in the LDA classifier');
ylabel('Performance (%)');
legend('RelieFF feature selection');
grid on;



