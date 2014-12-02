function timeMatchedSignals = matchStartTime( signals, sampleRate, timeToIgnore )

    nSignals = length(signals);
    timeMatchedSignals = cell( [nSignals 1] ); %preallocate
    for iSignal = 1:nSignals
        timeMatchedSignals{iSignal} = ...
            shiftRight(signals{iSignal},sampleRate, ...
            -1*timeToIgnore(iSignal), false);
    end


end

