function J_ppq5 = jitter_ppq5(T)
%JITTER_PPQ5 Jitter (ppq5): Represents the ratio of disturbance within five periods, i.e., the average absolute difference
% between a period and the average containing its four nearest neighbor periods, i.e. two previous and two
% subsequent periods, divided by average period


moved_ave_5 = filter(1/5*[1 1 1 1 1],1,T);
mean_T_5 = moved_ave_5(5:end);
J_ppq5 = mean(abs(T(3:end-2) - mean_T_5))/mean(T)*100;

end

