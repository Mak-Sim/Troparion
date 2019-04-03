function S_apq11 = shim_apq11(A)
%SHIM_APQ11: Amplitude Perturbation Quotient in 11 cycles (APQ11)
%           ќтношение амлитудных возмущений на 11 периодах 

moved_ave_11 = filter(1/11*ones(1,11),1,A);
mean_A_11 = moved_ave_11(11:end);
S_apq11 = mean(abs(A(6:end-5) - mean_A_11))/mean(A)*100;

end

