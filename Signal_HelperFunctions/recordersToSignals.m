function signals = recordersToSignals( recorders )
    
    nRecorders = length(recorders);

    signals = cell( [nRecorders 1] ); %preallocate
    for iRecorder = 1:nRecorders %fill
        signals{iRecorder} = audiorecorderToSignal(recorders(iRecorder));
    end
end

