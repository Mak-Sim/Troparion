function DPF = directional_petrurbation_factor(T0)
%Reference: R.J. Baken Clinical measurement of speech and voice, p.199 2000.

N_voice = length(T0);
diff_T0 = diff(T0);
cnt_zc = 0;
for i=1:N_voice-2
    if (sign(diff_T0(i))~=sign(diff_T0(i+1)))
       cnt_zc = cnt_zc + 1; 
    end
end

DPF = cnt_zc/N_voice*100;

end

