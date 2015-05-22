% PARAMETERS
% This file holds all user-defined parameters.




% % % % % % % % % % % % % % % % % % % % % % % 
% PHYSICAL SYSTEM PARAMETERS
% % % % % % % % % % % % % % % % % % % % % % % 

% SURFACE BELOW LISTENERS
SURFACE_WIDTH = 10; %(m)
SURFACE_HEIGHT = 10; %(m)



% LISTENERS
% Locations of listeners,
% where 0 0 0 indicates bottom left corner of surface
LISTENERS_LOCATIONS = rand(1, 3);
counter = 1;
for i = 0:10
    for j = 0:10
        LISTENERS_LOCATIONS(counter,:) = [j i 0];
        counter = counter + 1;

    end
end

                   
RECORDING_DURATION = .01; %(sec)

SAMPLING_RATE = 1000; %Hz




% SOUND EMITTER
% Location of sound emitter
% where 0 0 0 indicates bottom left corner of surface
SOUND_EMITTER_LOCATION = [
                                5 5 5; %at bottom left listener
                                %TODO: enable multiple emitters
                          ];
                      
SOUND_EMITTER_TIMESTAMP = RECORDING_DURATION*.5; %(sec)




% NOISY ENVIRONMENT
% Random noise with this maximum value will be included in the 
% simulated listeners' signals
MAX_NOISE = 0;





% % % % % % % % % % % % % % % % % % % % % % % % 
% RESOLUTION OF ANALYSIS
% % % % % % % % % % % % % % % % % % % % % % % % 

SURFACE_SAMPLING_PERIOD = .1; %(m)
Z_COORDINATES_TO_SAMPLE = [0]; %(m)




% % % % % % % % % % % % % % % % % % % % % % % % 
% CONTROL OVER ALGORITHM RUN
% % % % % % % % % % % % % % % % % % % % % % % % 

% Indicates whether to graph the simulated listeners' locations
DISPLAY_LISTENERS_LOCATIONS = true;

% Indicates whether to graph the simulated emmiter's locations
DISPLAY_EMITTER_LOCATION = true;

% Indicates whether to graph the simulated listeners' signals
DISPLAY_LISTENERS_SIGNALS = true;

% Indicates whether to conduct surface analysis
ESTIMATE_SOUND_SURFACE = true;

DISPLAY_RECONSTRUCTED_SOUND = true;



% % % % % % % % % % % % % 
% VISUALIZATION
% % % % % % % % % % % % % 
LISTENERS_COLOR = 'k';
SOUND_EMITTER_COLOR = 'r';




