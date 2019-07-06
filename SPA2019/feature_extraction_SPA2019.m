close all;

addpath('..\IRAPT/IRAPT_web');
addpath('..\Perturbation_analysis');

[pathology_table,~,~] = xlsread('Database_description.xlsx',1); % 'Pathology'
N_p = size(pathology_table,1);  % number of pathological samples

i = 0;
file = [];
file_ind = 0;
while (i<N_p)   
    i = i + 1;

    file_ind = file_ind + 1;
    file(file_ind).name = ['Pathology/' num2str(pathology_table(i,1),'%03d')];
    file(file_ind).age = pathology_table(i,2);
    file(file_ind).label = 1;   % ALS pathology    
end

[ctrl_table,~,~] = xlsread('Database_description.xlsx',2); % 'Control'
k=0;
N_c = size(ctrl_table,1);  % number of control samples
while (k<N_c)   
    k = k + 1;
       
    file_ind = file_ind + 1;
    file(file_ind).name = ['Control/' num2str(ctrl_table(k,1),'%03d')]; 
    file(file_ind).age = ctrl_table(k,2);
    file(file_ind).label = 0;   % Controls            
end

dataset_trop_h = [];
dataset_trop_p = [];

ind_h = 1;
ind_p = 1;
for i=1:length(file)
    
    [s, fs]=audioread([ file(i).name '.wav']); 
    s = s(:,1); % only mono signal is processed
    
    [F0, ~, time_marks] = irapt(s, fs, 'irapt1','sustain phonation');  
    
    % Segmentation of signal
    [F0_periods] = WM_phase_const(s,F0,time_marks,fs);
    [periods_Amp]= amp_extract(F0_periods,s);
    
    %% Jitter
    J_loc  = shim_local(F0_periods);
    J_ppq5 = jitter_ppq5(F0_periods);
    J_rap  = jitter_rap(F0_periods);
    PVI    = pathology_vibrato(F0,time_marks(2),196,8);
    
    S_loc   = shim_local(periods_Amp);
    S_apq3  = shim_apq3(periods_Amp);
    S_apq5  = shim_apq5(periods_Amp);
    S_apq11 = shim_apq11(periods_Amp);
           
    fprintf('File: %s\n', file(i).name);
    fprintf('Jitter:local = %1.2f %% \n', J_loc);
    fprintf('Jitter:RAP   = %1.2f %% \n', J_rap);
    fprintf('Jitter:PPQ5  = %1.2f %% (IRAPT)\n', J_ppq5);            
    fprintf('Shimmer:local = %1.2f %% \n', S_loc);
    fprintf('Shimmer:APQ3  = %1.2f %% \n', S_apq3);
    fprintf('Shimmer:APQ5  = %1.2f %% \n', S_apq5);
    fprintf('Shimmer:APQ11 = %1.2f %% \n', S_apq11);          
    fprintf('PVI  = %1.3f %% \n', PVI);
    
    if (file(i).label == 0)
        dataset_trop_h(ind_h).file_name = file(i).name;
        dataset_trop_h(ind_h).label = 0;
        dataset_trop_h(ind_h).age = file(i).age;
        dataset_trop_h(ind_h).feature_vec = [J_loc J_rap J_ppq5 S_loc S_apq3 S_apq5 S_apq11 PVI];
                
        ind_h = ind_h + 1;
    elseif (file(i).label == 1)
        dataset_trop_p(ind_p).file_name = file(i).name;
        dataset_trop_p(ind_p).label = 1;
        dataset_trop_p(ind_p).age = file(i).age;
        dataset_trop_p(ind_p).feature_vec = [J_loc J_rap J_ppq5 S_loc S_apq3 S_apq5 S_apq11 PVI];
        
        ind_p = ind_p + 1;
    else
        error('Unknown class.');
    end
        
end
%%
[dataset_trop_p, dataset_trop_h] = age_effect_remove(dataset_trop_p, dataset_trop_h);

% save('dataset_trop_h.mat','dataset_trop_h');
% save('dataset_trop_p.mat','dataset_trop_p');
