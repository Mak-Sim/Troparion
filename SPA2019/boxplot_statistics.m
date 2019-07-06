%% 1. Choose dataset to see statistics
type = 'trop';  % parameters obtained using Troparion toolset
% type = 'praat'; % parameters obtained using PRAAT system

if (strcmpi(type,'trop'))
    load('dataset_trop_h.mat');
    load('dataset_trop_p.mat');
    dataset_h = dataset_trop_h;
    dataset_p = dataset_trop_p;
elseif (strcmpi(type,'praat'))
    Dataset_praat;
    dataset_h = dataset_praat_h;
    dataset_p = dataset_praat_p;
else
    error('Unknown source type.');
end

%% 2. Choose one parameter

% Uncomment the following lines to see Jitter:loc statistics
% % feature = 'J_{loc}';
% % ind = 1;
% % range_feature = linspace(-0.7,1.4,100);  
% % band_width = 0.070;

% Uncomment the following lines Jitter:RAP statistics
% % feature = 'J_{rap}';
% % ind = 2;
% % range_feature = linspace(0,1.1,100);  
% % band_width = 0.04;

% Uncomment the following lines to see Jitter:PPQ5 statistics
% % feature = 'J_{ppq5}';
% % ind = 3;
% % range_feature = linspace(-0.5,0.8,100);  
% % band_width = 0.05;

% Uncomment the following lines to see Shimmer:loc statistics
% % feature = 'Sh_{loc}';
% % ind = 4;
% % range_feature = linspace(-5,7,100); 
% % band_width = 0.4;

% Uncomment the following lines to see APQ3 statistics
% % feature = 'Sh_{apq3}';
% % ind = 5;
% % range_feature = linspace(0,7,80); 
% % band_width = 0.4;

% Uncomment the following lines to see APQ5 statistics
% % feature = 'Sh_{apq5}';
% % ind = 6;
% % range_feature = linspace(0,8,80); 
% % band_width = 0.4;

% Uncomment the following lines to see APQ11 statistics
% % feature = 'Sh_{apq11}';
% % ind = 7;
% % range_feature = linspace(-4,5,80); 
% % band_width = 0.3;

% Uncomment the following lines to see PVI statistics
if (strcmpi(type,'trop'))
    feature = 'PVI'; % PVI only for Tropation-based dataset
    ind = 8;
    range_feature = linspace(-0.06,0.09,100); 
    band_width = 0.006;
else
    error('Wrong dataset.');
end


dataset_h_size = length(dataset_h);
dataset_p_size = length(dataset_p);

feature_h = zeros(1,dataset_h_size);
k = 0;
for i=1:dataset_h_size
    v = dataset_h(i).feature_vec;    
    k = k+1;
    feature_h(k) = v(ind);        
end
feature_h = feature_h(1:k);


feature_p = zeros(1,dataset_p_size);
k = 0;
for i=1:dataset_p_size
    v = dataset_p(i).feature_vec;        
    k = k+1;
    feature_p(k) = v(ind);
end
feature_p = feature_p(1:k);


feature_dens_and_boxplot(feature_h, feature_p, feature, band_width,[min(range_feature) max(range_feature)])

