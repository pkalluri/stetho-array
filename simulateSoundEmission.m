function [ soundListenerSignals ] = simulateSoundEmission(soundEmitterLocs, soundEmitterSignals, soundListenerLocs)
%Locs are matrixes with columns: x-coord, y-coord, z-coord
%Signals are matrixes with columns: timestamp, sample value
    SPEED_OF_SOUND = 340.29; %in m/s
    
    soundListenerSignals = cell([1 size(soundListenerLocs,1)]);%cell matrix to fill with signals at the sound listeners
    for currSoundListener = 1:length(soundListenerSignals) %each sound listener
        soundListenerSignal = zeros(0,2); %empty vertical matrix that will become Nx1 vertical matrix. sample values of signal

        for currSoundEmitter = 1:size(soundEmitterLocs,1) %each sound emitter
            %calculate travel time for sound between this emitter and listener
            deltaDistance = distance(soundEmitterLocs(currSoundEmitter,:),soundListenerLocs(currSoundListener,:));
            deltaTime = deltaDistance/SPEED_OF_SOUND;
            disp('deltaDistance');      
            disp(soundListenerLocs);
            disp(soundEmitterLocs(currSoundEmitter,:));       
            disp(soundListenerLocs(currSoundListener,:));       
            %shift this emitter's sound to the right by deltaTime, add noise and add it to current soundListener signal
            shiftedEmitterSignal = shiftRight(soundEmitterSignals{currSoundEmitter}, deltaTime);
            addNoise(shiftedEmitterSignal);
            soundListenerSignal = add(soundListenerSignal, shiftedEmitterSignal); %add to summed signal
        end

        soundListenerSignals{currSoundListener} = soundListenerSignal;
    end


end

