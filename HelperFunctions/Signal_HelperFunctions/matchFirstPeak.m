function timeMatchedSignals = matchFirstPeak( signals )

    nSignals = length(signals);
    timeMatchedSignals = cell( [nSignals 1] ); %preallocate
    for iSignal = 1:nSignals
        highSample = calculateFirstHighSample(signals{iSignal});
        timeMatchedSignals{iSignal} = ...
            shiftRightSamples(signals{iSignal}, ...
            -1*highSample, ...
            false);
    end


end

