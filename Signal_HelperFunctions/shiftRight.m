function shiftedSignal = shiftRight( signal, sampleRate, deltaTime, assumeUnkownIsZero )
%Given the sampleRate, in samples/sec,
%shifts the given signal by a number of samples closest to a shift of 
%the given deltaTime, in seconds.
    deltaSamples = round(deltaTime * sampleRate); %discrete # of samples to shift
       
    if deltaSamples > 0
        if not(assumeUnkownIsZero)
            y = [
                NaN([deltaSamples 1]); %assume NaN
                signal(:,2)
                ];
        else
            y = [
                zeros([deltaSamples 1]);
                signal(:,2)
                ];
        end
        x = (1:length(y))';
        shiftedSignal = [x, y];
    else %deltaSamples is negative, so shift left by abs value
        deltaSamples_left = abs(deltaSamples);
        fillSamples = min(deltaSamples_left, length(signal));
        if not(assumeUnkownIsZero)
            y = [
                signal(deltaSamples_left+1:length(signal),2);
                NaN([fillSamples 1]) %assume NaN
                ];
        else
            y = [
                signal(deltaSamples_left+1:length(signal),2);
                zeros([fillSamples 1])
                ];
        end

        x = (1:length(y))';
        shiftedSignal = [x, y];
    end
end

