# Isolated-Digits-Recognition (warm-up project!)
Implementation of Persian Isolated-Digits Recognition with Matlab

I recorded (0 to 9) digits two times (one for the test and the other one as a reference) in Persian (you can do that in your language!). 
then extracted their features (5 different feature vectors, one for each question(i).m) and tried to recognize them with **cepstral distance** measure. (see image below)
> **actually, cepstral distance is not a good measure for the speech recognition task, because it ignores time warping. 
for more accuracy, you can use neural networks such az LSTM.**

    question1:
    12 real cepstrum coefficients
    
    question2:
    12 MFCC (Mel-frequency cepstral coefficients)
    
    question3:
    12 MFCC + 1 Energy coefficient
    
    question4:
    12 MFCC + 1 Energy coefficient and their first derivatives
    
    question5:
    12 MFCC + 1 Energy coefficient and their first and second derivatives
    
## isolated digits or words recognition flowchart 
![1](https://user-images.githubusercontent.com/85555218/121799398-23c53780-cc41-11eb-8133-22f19fbfc7a8.png)
