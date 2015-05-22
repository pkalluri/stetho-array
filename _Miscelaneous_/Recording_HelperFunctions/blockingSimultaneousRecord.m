function blockingSimultaneousRecord(recorders, recordingTime)
    disp('Beginning recording.');
    nRecorders = length(recorders);
    for iRecorder = 1:nRecorders
        record(recorders(iRecorder), recordingTime);
    end
    

    pause(recordingTime + 1); %block until finished recording + 1 second

    disp('Done recording.');

end

