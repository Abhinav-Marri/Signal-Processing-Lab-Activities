% clear
% a = arduino("COM5","Uno","Libraries","Servo");
% 
% array = [262 262 392 392 440 440 392 349 349 330 330 294 294 262];
% 
% for k = 1:length(array)
%     array(k) = array(k) * 2;
%  playTone(a,'D8',array(k),10);
%  configurePin(a,'D8',"Unset");
%  pause(.1);
% end


% dur = 10;
% pv =0.05;
% %Song = zeros(1,dur/pv);
% 
% t0 = clock;
% k=0;
% while etime(clock, t0) < dur
%    k = k+1;
%   pause(pv);  
%   Song(k) = readVoltage(a,"A0");
% 
%   disp(clock);
% end
% % 
% pause(10);
% sound(Song);
% 
% for n = 1:length(Song)
%     writeDigitalPin(a,'D8',floor(Song(n)/5 +0.5));
%     pause(pv);
% end


