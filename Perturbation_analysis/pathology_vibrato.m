function [pvi,F0_norm,F0_filt,vib_spect,freq] = pathology_vibrato(F0,dt,f_size,hop_size)
%PATHOLOGY_VIBRATO -- calculation of PVI (pathological vibrato index)
%   Pathological voices having to big vibrato

fs = 1/dt;
F0_norm = F0(:)/mean(F0);

[b,a]=butter(3,[9/(fs/2) 14/(fs/2)]);
F0_filt = filter(b,a,[F0_norm(100:-1:2); F0_norm]); % extension mirror
F0_filt = F0_filt(100:end);
F0 = F0_filt(80:end);

Ln = length(F0);

freq = linspace(0,fs*(f_size-1)/f_size,f_size);
freq = freq(1:f_size/2);
frame_num = floor((Ln-f_size)/hop_size)+1;
buf = zeros(1,f_size/2);
for N=1:frame_num
    f_start = 1 + (N-1)*hop_size;
    f_end   = f_start+f_size-1;
    frame = F0(f_start:f_end);
    % Detrending
    x = [(1 : f_size)' ones(f_size,1)];            
    [kb, ~] = lsqr(x, frame(:));
    k = kb(1);
    b = kb(2);                        
    
%     figure;
%     subplot(311)
%     plot(frame);
%     hold on;
%     plot(k*(1:f_size)+b);
%     subplot(312);
    frame_detr = frame - (k*(1:f_size)'+b);
%     plot(frame_detr);
%     subplot(313);
%     frame_dm = frame_detr - mean(frame_detr);
%     plot(frame_dm);
%     frame = frame - mean(frame);
    frame_fft = fft(frame_detr.*hamming(f_size));
    buf = buf + abs(frame_fft(1:f_size/2));    
end
vib_spect = buf/frame_num;

pvi = sum(vib_spect(10:15));    % using only frequencies in range [9 14] Hz

% % plot(freq,vib_spect);
% % title(['Pathology vibrato = ' num2str(vib_p,"%1.2f") ' ']);

end

