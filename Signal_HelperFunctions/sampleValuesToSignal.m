function signal = sampleValuesToSignal( sampleValues ) %in seconds 
    %Given vertical matrix sample values, return corresponding signal.
%     disp(sampleValues(1:10))
    
    height = size(sampleValues,1); %# rows
    signal = [(1:height)',sampleValues];
    
%     disp(sampleValues(1:10));
%     disp('printing signal');
%     disp(signal(1:10, :));
end



