function s = audiorecorderToSignal( ar )
% Given an audiorecorder object, return a corresponding signal.
    s = sampleValuesToSignal(getaudiodata(ar));
    
end

