% PARAMETERS
% This file contains all user-defined parameters.




% % % % % % % % % % % % % % % % % % % % % % % 
% PHYSICAL SYSTEM PARAMETERS
% % % % % % % % % % % % % % % % % % % % % % % 

% SIZE OF "RELEVANT" SURFACE
% This surface is used in 2 ways:
% (1) All emitters and listeners are positioned relative to this surface--
% the point (0,0,0) is considered to be at the bottom left corner of this
% surface.
% (2) Only this space will be examined for sound during the sound
% reconstruction phase.
SURFACE_WIDTH = 10; %(m)
SURFACE_HEIGHT = 10; %(m)



% LISTENERS
% Locations of listeners
% where (0,0,0) indicates bottom left corner of above described surface

% Note: immediately below, we've elected to have listeners be at equally
% spaced intervals. This is not necessary. 
LISTENERS_LOCATIONS = rand(1, 3); % An Nx3 array, each row indicating an (x,y,z) location
counter = 1;
for i = 0:10
    for j = 0:10
        LISTENERS_LOCATIONS(counter,:) = [j i 0]; %Adds an equally spaced location
        counter = counter + 1;

    end
end

                   
RECORDING_DURATION = .01; %(sec)
% All simulated listeners will listen for this amount of time, only. Starting and
% stopping at the same time, exactly.

SAMPLING_RATE = 1000; %Hz
% All simulated listeners will sample at this rate.




% SOUND EMITTER
% Location of sound emitter
% where (0,0,0) indicates bottom left corner of above described surface
SOUND_EMITTER_LOCATION = [
                                5 5 5;
                          ];
                      
SOUND_EMITTER_TIMESTAMP = RECORDING_DURATION*.5; %(sec)
% The simulated sound emitter will make its 1-sample long tone this amount
% of time after all listeners have begun listening.




% NOISY ENVIRONMENT
% Random noise with this maximum value will be included in the signals as
% heard by the simulated listeners.
MAX_NOISE = 0;





% % % % % % % % % % % % % % % % % % % % % % % % 
% RESOLUTION OF RECONSTRUCITON OF SOUND
% % % % % % % % % % % % % % % % % % % % % % % % 

SURFACE_SAMPLING_PERIOD = .1; %(m)
% At points at this spacial period across the entire "relevant" surface, the program
% will conduct analysis to reconstruct sound.

Z_COORDINATES_TO_SAMPLE = [0]; %(m)
% A surface of reconstructed sound will be generated at each of these
% z-coordinates.




% % % % % % % % % % % % % % % % % % % % % % % % 
% CONTROL OVER ALGORITHM RUN
% % % % % % % % % % % % % % % % % % % % % % % % 

% Indicates whether to graph the simulated emitter's and listeners'
% locations
DISPLAY_LOCATIONS = true;


% Indicates whether to graph the simulated emmiter's and listeners' signals
DISPLAY_SIGNALS = true;

% Indicates whether to conduct surface analysis
ESTIMATE_SOUND_SURFACE = true;



% % % % % % % % % % % % % 
% VISUALIZATION
% % % % % % % % % % % % % 
LISTENERS_COLOR = 'k'; %Color to use to plot listener-related data
SOUND_EMITTER_COLOR = 'r'; %Color to us to plot emmiter-related data




