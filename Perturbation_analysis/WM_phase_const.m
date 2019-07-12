function [T0] = WM_phase_const(sig,F0,time_marks,fs)

% to delete
time_line = 1:length(sig);
F0 = MyFit(time_marks*fs,F0,time_line);
F0 = F0/fs*2*pi;
T0 = zeros(size(F0));

% % a = lpc(sig,6);
% % [h,w]=freqz(1,a,128,fs);
% % m = abs(h);
% % m = m/max(m);
% % h_size = 60;
% % b = fir2(2*h_size,[w(1:end-1)/(fs/2); 1],m);
% % sig = filter(b,1,[sig; zeros(h_size,1)]);
% % sig = sig(h_size+1:end);

% Initialization
Ln = length(sig);
cur_cum = 0;
n = 0;      % sample index
Nc = 0;     % cycle number
% Searching first period
while (cur_cum<2*pi)
   n = n + 1; 
   cur_cum = cur_cum + F0(n);   
end

% stocktaking
% n = n - 1;  % step back to last sample of current period
Nc = Nc + 1;        
T0(Nc) = n - 1;
T_prev = sig(1:T0(Nc));

cur_period = 1;
cur_cum = cur_cum - 2*pi;
while (n<(Ln-T0(Nc)))        
     
    if (cur_cum>(2*pi))                                        
%         n = n - 1; % step back to last sample of current period
        cur_P = cur_period - 1;
        % find better offset
        offset = round(cur_period*0.10);
        err = zeros(1,2*offset+1);  % delete
%         bias=-offset:offset;
        bias=round(-offset*0.8:offset*1.2);
        for k=1:length(bias)
            front_edge = n-1+bias(k);
            if (bias(k)>=0)
                Tc = T0(Nc);
                back_edge = front_edge - Tc + 1;
                T_cur = sig(back_edge:front_edge);
            else
                Tc = T0(Nc)+bias(k);
                back_edge = front_edge - Tc + 1;
                T_cur = sig(back_edge:front_edge);
            end
            err(k) = mean(abs(T_prev(end-Tc+1:end) - T_cur));
        end
        [~,min_ind] = min(err);
        
% %         % Infographics
% %         subplot(311);
% %         plot(bias,err);
% %         hold on;        
% %         plot(bias(min_ind),err(min_ind),'o');
% %         title(['bias = ' num2str(bias(min_ind),"%1.3f")]);
% %         hold off;
% %         subplot(3,1,[2 3]);
% %         plot(T_prev); hold on; plot(sig(n-1-T0(Nc)+bias(min_ind)+1:n-1+bias(min_ind)));        
% %         title(['Counter = ' num2str(Nc)]);
% %         hold off;
% %         pause(1/20);
% %         drawnow();
        
        n = n - 1 + bias(min_ind);       
        Nc = Nc + 1;        
        T0(Nc) = cur_P+bias(min_ind);
        T_prev = sig(n-T0(Nc)+1:n);        
        
        cur_period = 0;
        cur_cum = 0;                 
    else
        n = n + 1;
        cur_cum = cur_cum + F0(n);
        cur_period = cur_period + 1;
    end    
end

T0 = T0(1:Nc);  % delete

end

