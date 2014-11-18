function [ listenerSignals ] = ...
    simulateEmission(emitterLocs, emitterSignals, sampleRate, ...
                          listenerLocs)
%Given emmitters' locations and signals & listeners' locations,
%calculate listeners' signals.
% 
%Location matrixes and signal matrixes are always vertical (Nx1) arrays.
%A single location matrix has 3 columns: x-coord, y-coord, z-coord
%A single signal matrix has 2 columns: timestep, sample value
    SPEED_OF_SOUND = 340.29; %in m/s
    MAX_NOISE = .05;
    
    %cell matrix, for listeners' signals
    listenerSignals = cell([1 size(listenerLocs,1)]);
    
    for currListener = 1:length(listenerSignals) %each sound listener
        listenerSignal = zeros(0,2); %empty vertical matrix, to be filled
        for currEmitter = 1:size(emitterLocs,1) %each sound emitter
            
            %calculate sound travel time b/w this emitter and listener
            deltaDistance = distance(emitterLocs(currEmitter,:),...
                                     listenerLocs(currListener,:));
            deltaTime = deltaDistance/SPEED_OF_SOUND;
            
            %add noise, shift, and add to listener signal
            signalToAdd = addNoise(emitterSignals{currEmitter}, MAX_NOISE);
            signalToAdd = shiftRight(signalToAdd, ...
                                        sampleRate, deltaTime,...
                                        true);
            listenerSignal = add(listenerSignal, signalToAdd, false);
        end

        listenerSignals{currListener} = listenerSignal; %save
        
    end


end