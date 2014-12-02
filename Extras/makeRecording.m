function [ ar ] = makeRecording( timelength )
%makeRecording Make a recording of given timelength, returning recording
%data as a matrix, with column 1 as time and column 2 as audio signal
ar = audiorecorder;

disp('Start recording.')
recordblocking(ar, timelength);
disp('End of recording.');

end

