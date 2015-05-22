% ALGORITHM PARAMETERS

RECORDING_TIME = 5; %in seconds

% Set listener locations, in order that they are attached
arrayCenter = struct('x', 0, 'y', 0, 'z', 0);
arrayStepSize = .05715; %in m
LISTENER_LOCS = [         
                    arrayCenter.x-arrayStepSize arrayCenter.y-arrayStepSize arrayCenter.z; %bottom left
                    arrayCenter.x-arrayStepSize arrayCenter.y+arrayStepSize arrayCenter.z; %top left
                    arrayCenter.x+arrayStepSize arrayCenter.y+arrayStepSize arrayCenter.z; %top right
                    arrayCenter.x+arrayStepSize arrayCenter.y-arrayStepSize arrayCenter.z; %bottom right
                ]; %in m
GRAPH_LISTENER_SIGNALS = true;
GRAPH_LISTENER_LOCS = false;

% Surface signal estimation
ESTIMATE_SURFACE_SIGNALS = true;
SURFACE_Z_COORDINATE = 0; %in m, relative to center of array
max_xy = .1; %in m
SURFACE_MIN_X = -1*max_xy;
SURFACE_MAX_X = max_xy;
SURFACE_MIN_Y = -1*max_xy;
SURFACE_MAX_Y = max_xy;
SURFACE_X_STEP = .01;
SURFACE_Y_STEP = .01;

% Point signal estimation
ESTIMATE_POINT_SIGNALS = true;
POINTS = [
            5 5 -10;
            -10 10 -10;
            20 -20 -2;
          ];



% % VISUALIZATION PARAMETERS
% 
% % Graph sizing
% DIAGRAM_DIMENSION = 1; %m
% SURFACE_Z = 0;
% SURFACE_MAX = 5; %signal amplitude
% 
% % Colors
% LISTENER_COLOR = 'blue';
% ESTIMATED_SIGNAL_COLOR = 'red';
% ESTIMATED_SINGAL_COLOR_2 = 'black';





