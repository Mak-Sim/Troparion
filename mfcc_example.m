%% Suprasegmental MFCC + delta MFCC calculation
addpath('MFCC');
          
%% Analysis parameters
Tw = 25;                % analysis frame duration (ms)
Ts = 10;                % analysis frame shift (ms)
alpha = 0.97;           % preemphasis coefficient
M = 20;                 % number of filterbank channels 
C = 12;                 % number of cepstral coefficients 
L = 22;                 % cepstral sine lifter parameter
LF = 0;                 % lower frequency limit (Hz)
HF = 4000;              % upper frequency limit (Hz)     

% Surpasegmental parameters
Nframes   = 32;     % Number of frames per segment
Nfshift   = 8;      % Number of overlapping frames between segmants

%% Signal analysis
[x, fs] = audioread('IRAPT\web_src\001.wav');

[MFCC, ~, ~] = mfcc(x, fs, Tw, Ts, alpha, @hamming, [LF HF], M, C+1, L);

mfccs = MFCC(2:end,:);
delta_mfcc = diff(MFCC(2:end,:),1,2);

N_seg = floor((size(mfccs,2)-Nframes)/Nfshift) + 1;
mfcc_supra = zeros(N_seg,C);
delta_mfcc_supra = zeros(N_seg,C);

for N=1:N_seg
    index = 1+Nfshift*(N-1):Nfshift*(N-1) + Nframes;
    
    mfcc_supra(N,:)       = mean(mfccs(:,index),2);
    delta_mfcc_supra(N,:) = mean(delta_mfcc(:,index),2);
end

figure('Position',[200 200 450 700]);
subplot(311);
n = 1:Nframes*round((Tw/1000)*fs);
plot(n/fs,x(n));
title('Segment #1');
xlabel('Time, s');
ylabel('Amplitude');
xlim([min(n) max(n)]/fs);
subplot(312);
pcolor(mfcc_supra');
title('Mean mfccs');
xlabel('Segment number (time)');
ylabel('MFCCs');
shading flat; colormap jet;
subplot(313);
pcolor(delta_mfcc_supra');
title('Mean \Delta mfccs');
xlabel('Segment number (time)');
ylabel('\Delta MFCCs');
shading flat; colormap jet;

% % set(gcf, 'PaperPositionMode', 'auto');
% % print('-dpng', '-opengl','-r300','supraMFCC');

           