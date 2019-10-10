function PPF = pitch_petrurbation_factor(T0,fs)
%Reference: R.J. Baken Clinical measurement of speech and voice, p.199 2000.

N_voice = length(T0);
diff_T0 = abs(diff(T0)/fs);
N_p = sum(diff_T0>=0.5e-3); % counting petrurbation equal or greater half millisecond

PPF = N_p/N_voice*100;

end

