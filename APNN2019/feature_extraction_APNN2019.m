close all;

addpath('..\IRAPT/IRAPT_web');
addpath('..\Perturbation_analysis');

[pathology_table,~,~] = xlsread('..\SPA2019/Database_description.xlsx',1); % 'Pathology'
N_p = size(pathology_table,1);  % number of pathological samples

i = 0;
file = [];
file_ind = 0;
while (i<N_p)   
    i = i + 1;

    file_ind = file_ind + 1;
    file(file_ind).name = ['..\SPA2019/Pathology/' num2str(pathology_table(i,1),'%03d')];
    file(file_ind).age = pathology_table(i,2);
    file(file_ind).label = 1;   % ALS pathology    
end

[ctrl_table,~,~] = xlsread('..\SPA2019/Database_description.xlsx',2); % 'Control'
k=0;
N_c = size(ctrl_table,1);  % number of control samples
while (k<N_c)   
    k = k + 1;
       
    file_ind = file_ind + 1;
    file(file_ind).name = ['..\SPA2019/Control/' num2str(ctrl_table(k,1),'%03d')]; 
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
    
    [Fo, ~, time_marks] = irapt(s, fs, 'irapt1','sustain phonation');  
    
    % Segmentation of signal
    [Fo_periods] = WM_phase_const(s,Fo,time_marks,fs);
    [periods_Amp]= amp_extract(Fo_periods,s);
    
    %% Jitter
    J_loc  = shim_local(Fo_periods);
    J_ppq5 = jitter_ppq5(Fo_periods);
    J_rap  = jitter_rap(Fo_periods);
    J_ppq55 = shimmer_apq(Fo_periods,55);
    PVI    = pathology_vibrato(Fo,time_marks(2),196,8);
    
    S_loc   = shim_local(periods_Amp);
    S_apq3  = shim_apq3(periods_Amp);
    S_apq5  = shim_apq5(periods_Amp);
    S_apq11 = shim_apq11(periods_Amp);
    S_apq55  = shimmer_apq(periods_Amp,55);
    
%     PPF = pitch_petrurbation_factor(Fo_periods,fs);
    DPF = directional_petrurbation_factor(Fo_periods);
    PFR = phonatory_frequency_range(Fo);    
    Pitch_sigma = std(Fo);
    PPE = pitch_period_entropy(Fo);    

    fprintf('File: %s\n', file(i).name);
    fprintf('Jitter:PPQ55 = %1.2f %%\n', J_ppq55);            
    fprintf('Shimmer:APQ55 = %1.2f %% \n', S_apq55);          
    fprintf('DPF  = %1.3f %% \n', DPF);
    fprintf('PFR  = %1.3f \n', PFR);
    fprintf('PPE  = %1.3f \n', PPE);
    
    if (file(i).label == 0)
        dataset_trop_h(ind_h).file_name = file(i).name;
        dataset_trop_h(ind_h).label = 0;
        dataset_trop_h(ind_h).age = file(i).age;
        dataset_trop_h(ind_h).feature_vec = [J_loc J_rap J_ppq5 J_ppq55 S_loc S_apq3 S_apq5 S_apq11 S_apq55 PVI DPF PFR Pitch_sigma PPE];
                
        ind_h = ind_h + 1;
    elseif (file(i).label == 1)
        dataset_trop_p(ind_p).file_name = file(i).name;
        dataset_trop_p(ind_p).label = 1;
        dataset_trop_p(ind_p).age = file(i).age;
        dataset_trop_p(ind_p).feature_vec = [J_loc J_rap J_ppq5 J_ppq55 S_loc S_apq3 S_apq5 S_apq11 S_apq55 PVI DPF PFR Pitch_sigma PPE];
        
        ind_p = ind_p + 1;
    else
        error('Unknown class.');
    end
        
end
%%

save('dataset_trop_ext_h.mat','dataset_trop_h');
save('dataset_trop_ext_p.mat','dataset_trop_p');
