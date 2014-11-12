function signal = sampleValuesToSignal( startTime, timeStep, sampleValues ) %in seconds    
    yDims = size(sampleValues);
    height = yDims(1); %# rows
    x =  startTime:timeStep:(startTime+(height-1)*timeStep); %horizontal matrix of X vals, where X vals represent time
    
    signal = cat(2, x',sampleValues);
end



