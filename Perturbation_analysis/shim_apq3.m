function S_apq3 = shim_apq3(A)
%SHIM_APQ3: Amplitude Perturbation Quotient in 3 cycles (APQ3)
%           ќтношение амлитудных возмущений на 3 периодах 

moved_ave_3 = filter(1/3*[1 1 1],1,A);
mean_A_3 = moved_ave_3(3:end);
S_apq3 = mean(abs(A(2:end-1) - mean_A_3))/mean(A)*100;

end

