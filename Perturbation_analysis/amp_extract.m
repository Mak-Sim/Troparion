function [T0_amps] = amp_extract(T0,sig)

T0_amps = zeros(size(T0));

periods = cumsum(T0);
periods = [1 periods];

for i=1:length(periods)-1
    cycle_i = sig(periods(i):periods(i+1)-1);
    T0_amps(i) = max(cycle_i) - min(cycle_i);
end
end

