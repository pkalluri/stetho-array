% TODO:
% - change amplitude to be bw reasonable vals
% - redo surface to be better, with right x,y, etc
% - abstract out guesses to list
% - abstract out numplots
% - figure out role of samplerate



% END CONSTANTS
num_subplots = 2;

a = audiorecorder();
sampleRate = a.SampleRate; %use recording default



%%%%%%%%%%%%%%%%%% SET LISTENERS & LOCS %%%%%%%%%%%%%%%%%%%%
listeners = recordAll(RECORD_TIME); %each listener is a mic/sound listener
pause(RECORD_TIME * 3)
numListeners = length(listeners);

% populate listener signals
listenerSignals = cell( [numListeners 1] ); %empty vertical matrix, for listener signals
for i = 1:numListeners
    disp('recorder #')
    disp(i)
    listenerSignals{i} = audiorecorderToSignal(listeners(1,i));
end

% populate locs
listenerLocs = [
                DELTA_ARRAY DELTA_ARRAY 0;
                -1*DELTA_ARRAY -1*DELTA_ARRAY 0;
                -1*DELTA_ARRAY DELTA_ARRAY 0;
                DELTA_ARRAY -1*DELTA_ARRAY 0;
                ];

%%%%%%%%%%%%%%%%%% GRAPH LISTENERS %%%%%%%%%%%%%%%%%%%%
subplot(num_subplots, 1, 1);
hold on
for i = 1:numListeners
    plotSignal(listenerSignals{i}, LISTENER_COLOR);
end


%%%%%%%%%%%%%%%%%% RUN & PLOT SIGNAL ESTIMATION %%%%%%%%%%%%%%%%%%%%
%1
goodGuess = [1 1 1];
pointSignal = getSignalAtPoint(goodGuess, listenerSignals, listenerLocs,...
                            sampleRate); %run
%graph
subplot(num_subplots,1,2);
hold on
plotSignal(pointSignal, ESTIMATED_SIGNAL_COLOR); %plot

%2
badGuess = [0 0 0]; %choose point
pointSignal = getSignalAtPoint(badGuess, listenerSignals, listenerLocs,...
                            sampleRate); %run
%graph
plotSignal(pointSignal, ESTIMATED_SINGAL_COLOR_2); %plot

%graph listeners
plotSignals(listenerSignals, LISTENER_COLOR);

legend('Examine source point', 'Examine other point', 'Listeners');
setupSignalEstimationGraph();


%%%%%%%%%%%%%%%%%% DIAGRAM OF POINTS %%%%%%%%%%%%%%%%%%%%
figure()
%diagram guesses
scatter3(goodGuess(1,1),goodGuess(1,2),goodGuess(1,3), ESTIMATED_SIGNAL_COLOR, 'filled');
hold on
scatter3(badGuess(1,1),badGuess(1,2),badGuess(1,3), ESTIMATED_SINGAL_COLOR_2, 'filled');
hold on
%diagram listeners
for i = 1:numListeners
    scatter3(listenerLocs(i,1),listenerLocs(i,2),listenerLocs(i,3), LISTENER_COLOR, 'filled');
end

ylim([-1*DIAGRAM_DIMENSION/2 DIAGRAM_DIMENSION/2]);
xlim([-1*DIAGRAM_DIMENSION/2 DIAGRAM_DIMENSION/2]);
zlim([-1*DIAGRAM_DIMENSION/2 DIAGRAM_DIMENSION/2]);
xlabel('x'); % X-axis label
ylabel('y'); % Y-axis label
zlabel('z'); % Z-axis label


%%%%%%%%%%%%%%%%%% ESTIMATED SURFACE %%%%%%%%%%%%%%%%%%%%
figure();


Z = rand([DIAGRAM_DIMSENSION/SURFACE_STEP_SIZE,DIAGRAM_DIMSENSION/SURFACE_STEP_SIZE]);
scaleUp = DIAGRAM_DIMENSION/2;
for i = (-1*DIAGRAM_DIMENSION/2:SURFACE_STEP_SIZE:DIAGRAM_DIMENSION/2)
    for j = (-1*DIAGRAM_DIMENSION/2:SURFACE_STEP_SIZE:DIAGRAM_DIMENSION/2)
        Z((i+scaleUp)/SURFACE_STEP_SIZE, (j+scaleUp)/SURFACE_STEP_SIZE) = getMaxY(...
                getSignalAtPoint([i j SURFACE_Z], listenerSignals, listenerLocs,sampleRate) );
    end
end

surf(Z);
ylim([0 DIAGRAM_DIMENSION]);
xlim([0 DIAGRAM_DIMENSION]);
zlim([-1*SURFACE_MAX SURFACE_MAX]);
xlabel('x'); % x-axis label
ylabel('y'); % y-axis label
zlabel('Peak Value'); % z-axis label 


