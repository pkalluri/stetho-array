% This script simulates listeners' signals, according to inputs.

listeners_signals = simulateListenersSignalsGivenOneEmission( ...
                            LISTENERS_LOCATIONS, ...        (m)
                            RECORDING_DURATION, ...         (sec)
                            SAMPLING_RATE, ...              (Hz)
                            ...
                            SOUND_EMITTER_TIMESTAMP, ...    (sec)
                            SOUND_EMITTER_LOCATION, ...     (m)
                            SPEED_OF_SOUND, ...             (m/sec)
                            MAX_NOISE ...
                        );
% TODO: indicate that locations are always in array form/ that an array is
% expected