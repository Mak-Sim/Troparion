function S_local = shim_local(A)
%SHIM_LOCAL: Отношение амлитудных возмущений

S_local = mean(abs(A(2:end) - A(1:end-1)))/mean(A)*100;

end

