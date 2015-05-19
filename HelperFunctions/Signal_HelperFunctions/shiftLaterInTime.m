function shiftedSignal = shiftLaterInTime( signal, ... 
                                    delta_time, ... %(sec)
                                    SAMPLING_RATE ... %(Hz)
                                    )
%Shifts the given signal approximately the given amount of time, later
    %Given the sampleRate, in samples/sec,
    %shifts the given signal by a number of samples closest to a shift of 
    %the given deltaTime, in seconds.
    
    %discrete # of samples to shift
    delta_samples = timeToSamples(delta_time, SAMPLING_RATE);
    
    shiftedSignal = shiftLaterInSamples(signal, delta_samples);
end

