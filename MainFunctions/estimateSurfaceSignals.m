function surfaceOfSignals = estimateSurfaceSignals( surfaceZCoord, ...
    xVals, yVals, ...
    listenerSignals, listenerLocs, ...
    signalEvaluationFunction, ...
    sampleRate)

%     figure();

    nXVals = length(xVals);
    nYVals = length(yVals);

    surfaceOfSignals(nYVals, nXVals) = 0;%preallocate
%     maxZ = -inf;
    pointNo = 1;
    for iXVal = 1:nXVals
        for jYVal = 1:nYVals
            currX = xVals(iXVal);
            currY = yVals(jYVal);
            
            signal = estimatePointSignal( ...
                [currX currY surfaceZCoord], ...
                listenerSignals, listenerLocs, sampleRate ...
                );
% %             
%             figure();
% % %             subplot(nXVals*nYVals, 1, pointNo);
% % %             disp(signal(1:10,1:2));
%             plotSignal(signal, 'green');
%             title(  strcat('(',int2str(iXVal),',',int2str(jYVal),')')  );
%             ylim([-3 3]);
%             pause(.1);
%             pointNo = pointNo + 1;
%             
% %             %abstract this choice of peak away
% %             z = getMaxY(signal);
% % %             disp(z);
% %             if z > maxZ
% %                 maxZ = z;
% %             end
%             
            surfaceOfSignals(jYVal,iXVal) = signalEvaluationFunction(signal);
        end
    end
    
%     %Scale down
%     for i = 1:length(x_vals)
%         for j = 1:length(y_vals)
%             original = surfaceOfSignals(j,i);
% %             disp(original);
%             scaledZ = surfaceOfSignals(j,i)/maxZ;
% %             disp(scaledZ);
%             surfaceOfSignals(j,i) = scaledZ;
%         end
%     end
%     disp('max z');
%     disp(maxZ);

end

