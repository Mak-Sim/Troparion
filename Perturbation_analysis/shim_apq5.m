function S_apq5 = shim_apq5(A)
%SHIM_APQ3: Amplitude Perturbation Quotient in 5 cycles (APQ5)
%           ќтношение амлитудных возмущений на 5 периодах 

moved_ave_5 = filter(1/5*[1 1 1 1 1],1,A);
mean_A_5 = moved_ave_5(5:end);
S_apq5 = mean(abs(A(3:end-2) - mean_A_5))/mean(A)*100;

end

