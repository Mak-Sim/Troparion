function J_rap = jitter_rap(T)
%JITTER_RAP : Relative Average Perturbation is defined in terms of three consecutive intervals

moved_ave = filter(1/3*[1 1 1],1,T);
mean_T   = moved_ave(3:end);
J_rap    = mean(abs(T(2:end-1) - mean_T))/mean(T)*100;

end

