function signal = audiorecorderToSignal( audiorecorder )
%     y = getaudiodata(audiorecorder); %vertical matrix of Y vals
%     
%     yDims = size(y);
%     height = yDims(1); %# rows
%     stepSize = 1./audiorecorder.SampleRate; %time vals
%     STARTX=0; %start value
%     x =  STARTX:stepSize:(STARTX+(height-1)*stepSize); %horizontal matrix of X vals, where X vals represent time
%     
%     signal = cat(2, x',y);
    START_TIME = 0;
    signal = sampleValuesToSignal(START_TIME, 1./audiorecorder.SampleRate, getaudiodata(audiorecorder));
end

