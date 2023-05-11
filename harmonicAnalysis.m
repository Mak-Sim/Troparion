function [Hp_mean, Hp_SD, RelHp] = harmonicAnalysis(fileName)
addpath('Troparion-master/IRAPT/IRAPT_web');
addpath('Troparion-master/Perturbation_analysis');
addpath('Troparion-master/SPA2019/Pathology');

[s, fs] = audioread(fileName);

[Fo, ~, time_marks] = irapt(s, fs, 'irapt1', 'sustain phonation');

[Fo_periods] = WM_phase_const(s, Fo, time_marks, fs);
Fo_line = cumsum(Fo_periods);

Nc = 8;
Nf = floor((length(Fo_line) - 1)/(Nc - 1));
I = 512* Nc;

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
harm = 10;
hp = ffts(:,9:8:(1+8*harm));
Hp = 20*log10(hp/(max(hp, [], 'all')));

%% Rates
Hp_mean = mean(Hp);
Hp_SD = sqrt(mean((Hp - Hp_mean).^2));

RelHp = 1./(abs(Hp_mean) + Hp_SD);

end

