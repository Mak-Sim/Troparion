function S_apq_N = shimmer_apq(A,N)
%SHIMMER_APQ: Amplitude Perturbation Quotient in N cycles (APQ_N)
%           ќтношение амлитудных возмущений на N периодах 
%        N - odd number

moved_ave_N = filter(1/N*ones(1,N),1,A);
mean_A_N = moved_ave_N(N:end);
S_apq_N = mean(abs(A((N+1)/2:end-(N-1)/2) - mean_A_N))/mean(A)*100;

end

