% RUNNER
% After finished updating PARAMETERS, run this script to begin the program.

% % % % % % % % % % % % % % % %
% LOAD NECESSARY INFORMATION INTO WORKSPACE
% % % % % % % % % % % % % % % % 
CONSTANTS;  %Constants assumed by this program
PARAMETERS;  %Parameters provided by the user


% % % % % % % % % % % % % % % %
% DIAGRAM PHYSICAL SYSTEM
% % % % % % % % % % % % % % % %
if DISPLAY_LOCATIONS 
    fig_system = figure('OuterPosition', [0, 0, 400, 900]);
    fig_system.Name = 'Physical System';
    if SIMULATION
        graphEmitterLocation( ...
                   SOUND_EMITTER_LOCATION, SOUND_EMITTER_COLOR, ...
                    SURFACE_WIDTH, SURFACE_HEIGHT);
    end
    graphListenersLocations(LISTENERS_LOCATIONS, LISTENERS_COLOR, ...
                    SURFACE_WIDTH, SURFACE_HEIGHT);
end





% % % % % % % % % % % % % % % %
% GET RESULTING SIGNALS
% % % % % % % % % % % % % % % %

if SIMULATION
    sound_emitter_signal = generateEmitterSignalGivenOneEmission( ...
                                    RECORDING_DURATION, ... %(sec)
                                    SAMPLING_RATE, ...      %(Hz)
                                    SOUND_EMITTER_TIMESTAMP ... %sound time(sec)
                                    );
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
    % TODO: Some code is duplicated in above 2 calls. Remove duplication for
    % performance enhancement.
else %not simulation
	RecordAll_Runner;
end


% DISPLAY RESULTING SIGNALS
if DISPLAY_SIGNALS     
    fig_signals = figure('Position', [400, 0, 300, 900]);
    fig_signals.Name = 'Signals';
    
    hold on;
    title('Signal created by Emitter and Heard by Listeners');
    
    if SIMULATION
        num_plots = length(listeners_signals) + 1; %1 emitter
        graphEmitterSignal(sound_emitter_signal, SOUND_EMITTER_COLOR, num_plots);
        graphSignals(listeners_signals, LISTENERS_COLOR, num_plots, 1);
    else
        num_plots = length(listeners_signals);
        graphSignals(listeners_signals, LISTENERS_COLOR, num_plots, 0);
    end
end




% % % % % % % % % % % % % % % %
% RECONSTRUCT SOUND
% % % % % % % % % % % % % % % % 

% Algorithmically reconstructs sound localizations (& visualizations),
% from signals detected
if ESTIMATE_SOUND_SURFACE   
    fig_sound = figure('OuterPosition', [700, 0, 600, 900]);
    fig_sound.Name = 'Reconstructed Sound';
    fig_sound.NextPlot = 'replace';
    hold on;
    Estimate_Sound_Surface; 
    hold off;
end





