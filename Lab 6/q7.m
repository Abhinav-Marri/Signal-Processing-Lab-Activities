
[x1,fs1] = audioread("WAV_1.wav");
[x2,fs2] = audioread("WAV_2MG.wav");
[x3,fs3] = audioread("WAV_3.wav");
[x4,fs4] = audioread("WAV_4.wav");

disp("fs1 = ");
disp(fs1);
disp("fs2 = ");
disp(fs2);
disp("fs3 = ");
disp(fs3);
disp("fs4 = "); 
disp(fs4);

% time = length / fs;

disp("t1 = ");
disp(length(x1)/fs1);
disp("t2 = ");
disp(length(x2)/fs2);
disp("t3 = ");
disp(length(x3)/fs3);
disp("t4 = ");
disp(length(x4)/fs4);

% command sound plays the wav file;

sound(x1,fs1);

%sound(x2,fs2);
%sound(x3,fs3);
%sound(x4,fs4);

%using lower frequency 

%sound(x1,0.9 * fs1);
%pause(34);
sound(x1,0.7 * fs1);

%using higher frequency

%sound(x1,1.2 * fs1);
pause(34);
sound(x1,1.5 * fs1);

