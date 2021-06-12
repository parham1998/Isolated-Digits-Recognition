function p = question3()

fs = 16000;
w_size = 0.03 * fs;

p = 0;
for i = 0:9
    min_value = 1/0; %infinity
    min_index = 0;
    s = audioread(['test/' num2str(i) '_test.wav']);
    %v_melcepst: MFCC
    test_frames = v_melcepst(s, fs, 'E', 12, floor(3*log(fs)), w_size, w_size/3);
    for j = 0:9
        s = audioread(['train/' num2str(j) '_train.wav']);
        train_frames = v_melcepst(s, fs, 'E', 12, floor(3*log(fs)), w_size, w_size/3);
        d = cepstral_distance(test_frames, train_frames, min(size(test_frames, 1), size(train_frames, 1)));
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

function d = cepstral_distance(s1, s2, min_s1_s2)    
    d = 0;
    for i = 1:min_s1_s2
    	d = d + sum(abs(s1(i, 1:13) - s2(i, 1:13)));
    end
end