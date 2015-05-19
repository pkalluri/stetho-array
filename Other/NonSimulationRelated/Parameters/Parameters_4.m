% ALGORITHM PARAMETERS

RECORDING_TIME = 5; %in seconds

% Set listener locations, in order that they are attached
arrayCenter = struct('x', 0, 'y', 0, 'z', 0);
arrayStepSize = .15715; %in m (VERTICAL AND HORIZONTAL DISTANCE FROM ARRAY CENTER)
LISTENER_LOCS = [         
                    arrayCenter.x-arrayStepSize/2 arrayCenter.y+arrayStepSize/2 arrayCenter.z; %top left
                    arrayCenter.x+arrayStepSize/2 arrayCenter.y+arrayStepSize/2 arrayCenter.z; %top right
                    arrayCenter.x-arrayStepSize/2 arrayCenter.y-arrayStepSize/2 arrayCenter.z; %bottom left
                    arrayCenter.x+arrayStepSize/2 arrayCenter.y-arrayStepSize/2 arrayCenter.z; %bottom right                
                 ]; %in m
GRAPH_LISTENER_SIGNALS = true;
GRAPH_LISTENER_LOCS = false;

% Surface signal estimation
ESTIMATE_SURFACE_SIGNALS = true;
WATCH_SIGNALS = false;
SIGNAL_EVALUATION_FUNCTION = @calculateSnr;
SURFACE_Z_COORDINATE = 0; %in m, relative to center of array
max_xy = 50; %in m
SURFACE_MIN_X = -1*max_xy;
SURFACE_MAX_X = max_xy;
SURFACE_MIN_Y = -1*max_xy;
SURFACE_MAX_Y = max_xy;
SURFACE_X_STEP = .1*(max_xy*2);
SURFACE_Y_STEP = .1*(max_xy*2);

% Point signal estimation
ESTIMATE_POINT_SIGNALS = false;
POINT_LOCS = [         
                    -.2  0 arrayCenter.z; %left
                    .2  0 arrayCenter.z; %left
                ]; %in m


% VISUALIZATION PARAMETERS
LISTENER_COLORS{1} = 'red';
LISTENER_COLORS{2} = 'green';
LISTENER_COLORS{3} = 'cyan';
LISTENER_COLORS{4} = 'blue';
POINT_COLORS{1} = 'black';
POINT_COLORS{2} = 'black';
POINT_COLORS{3} = 'black';
POINT_COLORS{4} = 'black';
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





