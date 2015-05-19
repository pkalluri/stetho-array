function listeners_signals = simulateListenersSignalsGivenOneEmission( ...
                            listeners_locations, ...%array of coords(m)
                            recording_duration, ... %(sec)
                            SAMPLING_RATE, ...      %(Hz)
                            ...
                            sound_emitter_timestamp, ...%(sec)
                            sound_emitter_location, ... %array of corrds(m)
                            SPEED_OF_SOUND, ...          %(m/sec)
                            max_noise ... 
                        )
                    
% Simulates listeners' signals, given details
% 
%Location matrixes and signal matrixes are always vertical (Nx_) arrays.
%A single location matrix has 3 columns: x-coord, y-coord, z-coord
%A single signal matrix has 2 columns: timestep, sample value

emitter_signal = generateEmitterSignalGivenOneEmission( ...
                            recording_duration, ... %(sec)
                            SAMPLING_RATE, ...      %(Hz)
                            sound_emitter_timestamp ... %sound time(sec)
                            );

% Simulate listeners
nListeners = size(listeners_locations,1);
listeners_signals = cell( [nListeners 1] ); %preallocate

for iListener = 1:nListeners %fill
%   calculate sound travel time b/w this emitter and listener
    delta_distance = distance(sound_emitter_location,...
                             listeners_locations(iListener,:)); %(m)
    delta_time = delta_distance/SPEED_OF_SOUND; %(sec)

    listeners_signals{iListener} = shiftLaterInTime(emitter_signal, delta_time, SAMPLING_RATE);
end

listeners_signals = equalizeSignalsLength(listeners_signals);


end