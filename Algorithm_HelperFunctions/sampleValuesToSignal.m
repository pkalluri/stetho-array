function signal = sampleValuesToSignal( sampleValues ) %in seconds 
    %Given vertical matrix sample values, return corresponding signal.
    
    height = size(sampleValues,1); %# rows
    signal = [(1:height)',sampleValues];
end



