function timeToIgnore = blockingSimultaneousRecord(recorders, recordingTime)
    disp('Beginning recording.');
    nRecorders = length(recorders);
    timeToIgnore(nRecorders) = tic; %preallocate
    for iRecorder = 1:nRecorders
        timeToIgnore(iRecorder) = tic;
        record(recorders(iRecorder), recordingTime);
%         disp('recorder #');
%         disp(iRecorder);

%         record(recorders(nRecorders - iRecorder +1), recordingTime);
%         disp('recorder #');
%         disp(nRecorders - iRecorder +1);

%         Time consuming action to test with
%         if iRecorder == nRecorders
%             disp('Tics');
%             disp(timeToIgnore);
%             for jRecorder = 1:nRecorders
%                 disp('toc');
%                 disp(  toc( timeToIgnore(jRecorder) )  );
%                 timeToIgnore(jRecorder) = toc(  timeToIgnore(jRecorder)  );
%             end
%         end
    end
    
%     disp('Done with recording for loop. Current sample before + after pause');
%     disp(recorders(1).TotalSamples);
%     disp(recorders(2).TotalSamples);
    pause(recordingTime + 1); %block until finished recording + 1 second
%     disp(recorders(1).TotalSamples);
%     disp(recorders(2).TotalSamples);
    disp('Done recording.');
    
%     disp('Time lag zeroed out w.r.t last');
%     disp(timeToIgnore);
end

