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
    graphLocations(LISTENERS_LOCATIONS, LISTENERS_COLOR, ...
                   SOUND_EMITTER_LOCATION, SOUND_EMITTER_COLOR, ...
                    SURFACE_WIDTH, SURFACE_HEIGHT);
end





% % % % % % % % % % % % % % % %
% SIMULATE RESULTING SIGNALS
% % % % % % % % % % % % % % % %
sound_emitter_signal = generateEmitterSignalGivenOneEmission( ...
                                RECORDING_DURATION, ... %(sec)
                                SAMPLING_RATE, ...      %(Hz)
                                SOUND_EMITTER_TIMESTAMP ... %sound time(sec)
                                );
Simulate_Listeners_Signals_Given_One_Emission;
% TODO: Some code is duplicated in above 2 calls. Remove duplication for
% performance enhancement.



% DISPLAY RESULTING SIGNALS
if DISPLAY_SIGNALS     
    fig_signals = figure('Position', [400, 0, 300, 900]);
    fig_signals.Name = 'Signals';
    
    hold on;
    title('Signal created by Emitter and Heard by Listeners');
    
    num_plots = length(listeners_signals) + 1; %1 emitter
    graphEmitterSignal(sound_emitter_signal, SOUND_EMITTER_COLOR, num_plots);
    graphSignals(listeners_signals, LISTENERS_COLOR, num_plots);
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





