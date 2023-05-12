function [Hp_mean, Hp_SD, RelHp] = harmonics_analysis(s, Fo_periods, h_num)
% HARMONICS_ANALYSIS : routine for calculation harmonic features for
%                      sustaine vowel analysis [1]
% Parameters:
% s -- input signal
% Fo_periods -- fundamental period time stamps 
% h_num -- number of harmonic to analyse (defualt h_num = 8)
%
% References:
%   [1] Vashkevich, M., and Rushkevich, Yu. "Classification of ALS 
%       patients based on acoustic analysis of sustained vowel phonations." 
%       Biomedical Signal Processing and Control 65 (2021): 102350.

if nargin==2
    h_num = 8;
elseif nargin<2
    error("Not enought arguments");
end

Fo_line = cumsum(Fo_periods);

Nc = 8; % number of cycles
fft_size = 512;
Nf = floor((length(Fo_line) - 1)/(Nc - 1));
I = fft_size* Nc;

frames = zeros(Nf, I);
ffts = zeros(Nf, I);
window = transpose(hamming(I));

j = 1;
for i = 0:Nc-1:length(Fo_line)-(Nc)
   if i == 0 
       temp = s(1:Fo_line(Nc));
   else
       temp = s(Fo_line(i):Fo_line(i+Nc));
   end
   k = linspace(1, length(temp), I);
   temp_interp = interp1(1:length(temp), temp, k);
   filtered = temp_interp .* window;
   frame_fft = fft(filtered);

   ffts(j, :) = abs(frame_fft);
   frames(j, :) = filtered;
   j = j + 1;
end

%% Harmonics
hp = ffts(:,1+Nc:Nc:(1+Nc*h_num));
Hp = 20*log10(hp/(max(hp, [], 'all')));

%% Rates
Hp_mean = mean(Hp);
Hp_SD = sqrt(mean((Hp - Hp_mean).^2));

RelHp = 1./(abs(Hp_mean) + Hp_SD);

end

