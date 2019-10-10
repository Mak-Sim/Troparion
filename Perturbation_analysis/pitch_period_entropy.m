function PPE = pitch_period_entropy(Fo)
%PITCH_PERIOD_ENTROPY estimates abnormal pitch variation
%   Source: Little, M.A. et al. Suitability of dysphonia measurements for
%   telemonitoring of Parkinson's disease //  IEEE Transactions on
%   Biomedical Engineering, 2009. - vol.56, iss. 4. - P. 1015-1022.
%
%   Processing steps:
%   1. Transformation Hertz to Semitones
%   2. Linear whitening filter
%   3. Discrete probability distribution
%   4. Entropy of this distribution

% 1. Transformation Hertz to Semitones
mean_Fo = mean(Fo);
F_min = mean_Fo/sqrt(2);    % lower bound of octave
rat_Fo = Fo/F_min;
semitone_Fo = log(rat_Fo)/log(2^(1/12));

% 2. Whitening
a = lpc(semitone_Fo,2);
semi_Fo = filter(a,1,semitone_Fo);
semi_Fo = semi_Fo(6:end);

% 3. Discrete probability distribution
r = linspace(-1.5,1.5,30); % residual pitch period
dpd = hist(semi_Fo,r)/length(semi_Fo);
% % bar(r,dpd);

% 4. Entropy of this distribution
PPE = 0;
for i=1:length(r)
    if dpd(i)~=0
        PPE = PPE - dpd(i)*log2(dpd(i));
    end
end

end

