function p = main(index)

%hamming window
%sampling frequency: 16Kh
%frame size: 30ms
%stride size: 10ms

if index == 1
    %12 real cepstrum coefficient
    p = question1();
elseif index == 2
    %12 MFCC: size = 12
    p = question2();
elseif index == 3
    %12 MFCC + 1 Energy coefficient: size = 13
    p = question3();
elseif index == 4
    %12 MFCC + 1 Energy coefficient and their first derivatives: size = 26
    p = question4();
elseif index == 5
    %12 MFCC + 1 Energy coefficient and their first and second derivatives: size = 39
    p = question5();
end

end