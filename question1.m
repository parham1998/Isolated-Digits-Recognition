function p = question1()

fs = 16000;
w_size = 0.03 * fs;

p = 0;
for i = 0:9
    min_value = 1/0; %infinity
    min_index = 0;
    s = audioread(['test/' num2str(i) '_test.wav']);
    test_frames = v_enframe(s, hamming(w_size, 'periodic'), w_size/3);
    for j = 0:9
        s = audioread(['train/' num2str(j) '_train.wav']);
        train_frames = v_enframe(s, hamming(w_size, 'periodic'), w_size/3);
        d = cepstral_distance(test_frames, train_frames);
        %
        if d < min_value
            min_value = d;
            min_index = j;
        end
        %
    end
    if min_index == i
        p = p + 1;
    end
end

p = (p/10) * 100;

end

function trc = twelve_real_cepstrum(frames)

trc = zeros(size(frames, 1), 12);
for i = 1:size(frames, 1)
    for j = 1:12
        %rceps: real cepstrum coefficients
        rc = rceps(frames(i,1:end));
        trc(i, j) = rc(j);
    end
end

end


function d = cepstral_distance(s1, s2)
    trc1 = twelve_real_cepstrum(s1);
    trc2 = twelve_real_cepstrum(s2);
    
    d = 0;
    for i = 1:min(size(s1, 1), size(s2, 1))
    	d = d + sum(abs(trc1(i, 1:12) - trc2(i, 1:12)));
    end
end