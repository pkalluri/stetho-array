function estimated_signal = ...
    estimateSignalFromPoint(point, ...  (m)
                            listeners_signals, ... 
                            listeners_locations, ... array of coords (m)
                            sampleRate, ...    (Hz)
                            SPEED_OF_SOUND ... (m/sec)
                            )
%Estimates signal from given point, given listeners' locations and signals.

%   Get shifted signals
    nListeners = size(listeners_locations,1);
    shifted_listeners_signals = cell( [nListeners 1] ); %preallocate

    for iListener = 1:nListeners %each sound listener            
        %calculate sound travel time b/w point and this listener
        delta_distance = ...
            distance(point, listeners_locations(iListener,:)); %(m)
        delta_time = delta_distance/SPEED_OF_SOUND; %(sec)

        %shift listerners' signal backwards in time, to when it was emitted
        shifted_listeners_signals{iListener, 1} = shiftLaterInTime( ...
                                    listeners_signals{iListener}, ...
                                    -1*delta_time,...
                                    sampleRate...
                                );
    end
    
%     Normalize signal domain
    shifted_listeners_signals = ...
        fullyEqualizeSignalsLength(shifted_listeners_signals);
    
%     Combine shifted signals into single signal
    estimated_signal = addMultipleSignals(shifted_listeners_signals);
end
