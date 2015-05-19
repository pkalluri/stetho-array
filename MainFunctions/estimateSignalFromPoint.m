function signal = ...
    estimateSignalFromPoint(point, ...  (m)
                            listener_signals, ... 
                            listener_locations, ... array of coords (m)
                            sampleRate, ...    (Hz)
                            SPEED_OF_SOUND ... (m/sec)
                            )
%Estimate signal from given point, given listeners' locations and signals.

%   Get shifted signals
    nListeners = size(listeners_locations,1);
    shifted_listeners_signals = cell( [nListeners 1] ); %preallocate

    for iListener = 1:nListeners %each sound listener            
        %calculate sound travel time b/w point and this listener
        delta_distance = ...
            distance(point, listener_locations(iListener,:)); %(m)
        delta_time = delta_distance/SPEED_OF_SOUND; %(sec)

        %shift listerners' signal backwards in time, to when it was emitted
        shifted_signal = shiftRight( ...
                                    listener_signals{iListener}, ...
                                    sampleRate, -1*delta_time,...
                                    true...
                                );
    end
    
%   Combine shifted signals, by dot producting them
    
    is_first_listener = true;
    for 
                    signal = add(signal, shifted_signal, true);  
    %         num = dotSignals(signal,signalToAdd);  
    end
end
