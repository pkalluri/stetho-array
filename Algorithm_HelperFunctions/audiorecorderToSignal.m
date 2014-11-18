function signal = audiorecorderToSignal( audiorecorder )
% Given an audiorecorder object, return a corresponding signal.
    
    signal = sampleValuesToSignal(getaudiodata(audiorecorder));
end

