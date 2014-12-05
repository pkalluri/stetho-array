function surfaceOfSignals = estimateSurface( surfaceZCoord, ...
    xVals, yVals, ...
    listenerSignals, listenerLocs, ...
    sampleRate, ...
    graphAll)

    if graphAll
        figure();
        hold on;
    end

    nXVals = length(xVals);
    nYVals = length(yVals);

    surfaceOfSignals(nYVals, nXVals) = 0;%preallocate
    
    if graphAll
        pointNo = 1;
    end
    
    for iXVal = 1:nXVals
        for jYVal = 1:nYVals
            currX = xVals(iXVal);
            currY = yVals(jYVal);
            
            signal = estimatePointSignal( ...
                [currX currY surfaceZCoord], ...
                listenerSignals, listenerLocs, sampleRate ...
                );

            num = estimateDottedSignal( ...
                [currX currY surfaceZCoord], ...
                listenerSignals, listenerLocs, sampleRate ...
                );
            if graphAll
%                 subplot(nXVals*nYVals, 1, pointNo);
                plotSignal(signal, 'blue');
                title(  strcat('(',int2str(iXVal),',',int2str(jYVal),')')  );
                ylim([-3 3]);
                pause(.1);
                pointNo = pointNo + 1;
            end
            
            surfaceOfSignals(jYVal,iXVal) = num;
%             surfaceOfSignals(jYVal,iXVal) = signal;
        end
    end
end

