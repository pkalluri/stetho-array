function blockingSimultaneousRecord(recorders, recordingTime)
    disp('Beginning recording.');
    nRecorders = length(recorders);
    for iRecorder = 1:nRecorders
        record(recorders(iRecorder), recordingTime);
        disp('recorder #');
        disp(iRecorder);

%         record(recorders(nRecorders - iRecorder +1), recordingTime);
%         disp('recorder #');
%         disp(nRecorders - iRecorder +1);
    end
    disp(recorders(1).CurrentSample);
    disp(recorders(2).CurrentSample);
    pause(recordingTime + 1); %block until finished recording + 1 second
    disp(recorders(1).CurrentSample);
    disp(recorders(2).CurrentSample);
    disp('Done recording.');
end

