% Loads the paramaters 

% % % % % % % % % % % % % % % % % % % % % % % 
% PHYSICAL SYSTEM PARAMETERS
% % % % % % % % % % % % % % % % % % % % % % % 

% Dimensions of surface underneath ASCULARRAY
SURFACE_WIDTH = 1000; %(m)
SURFACE_HEIGHT = 1000; %(m)

% Locations of listeners that make up ASCULARRAY,
% where 0 0 0 indicates bottom left corner of surface
LISTENERS_LOCATIONS = [         %X  Y  Z (m)
                                0  1  0; %top left
                                1  1  0; %top right
                                0  0  0; %bottom left
                                1  0  0; %bottom right    
                                1000  0  0; %really far along x-axis
                       ];
                   
RECORDING_DURATION = 1; %(sec)

%FOR DEBUGGING:
% Indicates whether to graph the simulated listeners' locations
DISPLAY_LISTENERS_LOCATIONS = false;






% % % % % % % % % % % % % % % % % % % % % % % 
% SIMULATED EMITTER PARAMETERS
% % % % % % % % % % % % % % % % % % % % % % % 

% Location of sound emitter
% where 0 0 0 indicates bottom left corner of surface
SOUND_EMITTER_LOCATION = [
                                0 0 0; %at bottom left listener
                                %TODO: enable multiple emitters
                          ];
                      
SOUND_EMITTER_TIMESTAMP = 1; %(sec)

% Random noise with this maximum value will be included in the 
% simulated listeners' signals
MAX_NOISE = 0;





% % % % % % % % % % % % % % % % % % % % % % % 
% LISTENING PARAMETERS
% % % % % % % % % % % % % % % % % % % % % % %

% Indicates whether to graph the simulated listeners' signals
DISPLAY_LISTENERS_SIGNALS = true;





% % % % % % % % % % % % % % % % % % % % % % % % 
% % PARAMETERS TO SHOW SOUND
% % % % % % % % % % % % % % % % % % % % % % % % 

ESTIMATE_SOUND_SURFACE = true;
SURFACE_SAMPLING_PERIOD = 1; %(m)

% WATCH_SIGNALS = false;
% SIGNAL_EVALUATION_FUNCTION = @calculateSnr;
% SURFACE_Z_COORDINATE = 0; %in m, relative to center of array
% max_xy = .20; %in m
% SURFACE_MIN_X = -1*max_xy;
% SURFACE_MAX_X = max_xy;
% SURFACE_MIN_Y = -1*max_xy;
% SURFACE_MAX_Y = max_xy;
% SURFACE_X_STEP = .01*(max_xy*2);
% SURFACE_Y_STEP = .01*(max_xy*2);
% 


% % PARAMETERS TO LOCATE SOUND
% ESTIMATE_POINT_SIGNALS = false;
% POINT_LOCS = [         
%                     -.2  0 arrayCenter.z; %left
%                     .2  0 arrayCenter.z; %left
%                 ]; %in m
% 
% 
% % % Graph sizing
% % DIAGRAM_DIMENSION = 1; %m
% % SURFACE_Z = 0;
% % SURFACE_MAX = 5; %signal amplitude
% % 
% % % Colors
% % LISTENER_COLOR = 'blue';
% % ESTIMATED_SIGNAL_COLOR = 'red';
% % ESTIMATED_SINGAL_COLOR_2 = 'black';





