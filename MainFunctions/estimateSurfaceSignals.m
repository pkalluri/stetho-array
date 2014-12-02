function surfaceOfSignals = estimateSurfaceSignals( surfaceZCoord, ...
    xVals, yVals, ...
    listenerSignals, listenerLocs, ...
    signalEvaluationFunction, ...
    sampleRate)


    nXVals = length(xVals);
    nYVals = length(yVals);

    surfaceOfSignals(nYVals, nXVals) = 0;%preallocate
    pointNo = 1;
    for iXVal = 1:nXVals
        for jYVal = 1:nYVals
            currX = xVals(iXVal);
            currY = yVals(jYVal);

            signal = estimatePointSignal( ...
                [currX currY surfaceZCoord], ...
                listenerSignals, listenerLocs, sampleRate ...
                );
            
%             figure();
% %             subplot(nXVals*nYVals, 1, pointNo);
% %             disp(signal(1:10,1:2));
%             plotSignal(signal, 'green');
%             title(  strcat('(',int2str(iXVal),',',int2str(jYVal),')')  );
%             ylim([-3 3]);
%             pause(.1);
%             pointNo = pointNo + 1;
            
%             disp(signalEvaluationFunction(signal));
            surfaceOfSignals(jYVal,iXVal) = signalEvaluationFunction(signal);
%             surfaceOfSignals(jYVal,iXVal) = signal;
        end
    end
end

