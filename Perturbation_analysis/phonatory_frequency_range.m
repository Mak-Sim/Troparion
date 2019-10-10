function PFR = phonatory_frequency_range(Fo)

Fo_hi = max(Fo);
Fo_lo = min(Fo);

PFR = log10(Fo_hi/Fo_lo)/log10(2);

end

