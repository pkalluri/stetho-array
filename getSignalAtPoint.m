function signal = ...
    getSignalAtPoint(point, listenerSignals, listenerLocs, sampleRate)
%Given listeners' locations and signals,
%calculate signal at given point.
% 
%Location matrixes and signal matrixes are always vertical (Nx1) arrays.
%A single location matrix has 3 columns: x-coord, y-coord, z-coord
%A single signal matrix has 2 columns: timestep, sample value
    SPEED_OF_SOUND = 340.29; %in m/s
    
    signal = rand([0,2]); %to fill
    
    for currListener = 1:length(listenerSignals) %each sound listener            
        %calculate sound travel time b/w point and this listener
        deltaDistance = distance(point, listenerLocs(currListener,:));
        deltaTime = deltaDistance/SPEED_OF_SOUND;

        %shift and add to point signal
        signalToAdd = shiftRight(listenerSignals{currListener}, ...
                                    sampleRate, -1*deltaTime,...
                                    true);
%         plotSignal(signalToAdd ,'black');
        signal = add(signal, signalToAdd, true);        
    end


end
