%%%%%%%%%%%%%%%% LIBRARY OF EMMITER SIGNALS %%%%%%%%%%%%%%%
a = audiorecorder();
sampleRate = a.SampleRate; %use recording default

recordedSignal1 = audiorecorderToSignal(makeRecording(10));
recordedSignal2 = audiorecorderToSignal(makeRecording(10));
% sampleValuesHorizontal = [0 0 0 1 0];
% simpleEmitterSignal1 = sampleValuesToSignal(...
% startTime, timeStep, sampleValuesHorizontal');
    

%%%%%%%%%%%%%%%%%% CHOOSE EMITTERS & LISTENERS %%%%%%%%%%%%%%%%%%%%

%Choose emitter signals and locs
numEmitters = 1;

emitterSignals = cell( [numEmitters 1] ); %vertical matrix of emitter signals
emitterLocs = rand([numEmitters 3]); %vertical matrix of  emitter locs

emitterSignals{1} = recordedSignal1;
emitterLocs(1,:) = [0 0 0];

%soundEmitterSignals{2} = soundEmitterSignal2;


%Choose listener locs
listenerLocs = [1000 1200 1000 ;
                1200 200 130];
         
            
%%%%%%%%%%%%%%%%%% GRAPHING PARAMETERS %%%%%%%%%%%%%%%%%%%%
numSubplots = 2; %total # of subplots to be plotted

 
 
%%%%%%%%%%%%%%%%%% RUN & PLOT SIMULATION %%%%%%%%%%%%%%%%%%%%
%run
listenerSignals = simulateEmission(emitterLocs,emitterSignals,...
                                        sampleRate,...
                                        listenerLocs);

%plot
subplot(numSubplots,1,1);
hold on
plotSignals(emitterSignals, 'red');
plotSignals(listenerSignals, 'blue');
setupSimulationGraph();


%%%%%%%%%%%%%%%%%% RUN & PLOT SIGNAL ESTIMATION %%%%%%%%%%%%%%%%%%%%
%1
point = [0 0 0]; %choose point
pointSignal = getSignalAtPoint(point, listenerSignals, listenerLocs,...
                            sampleRate); %run
%graph
subplot(numSubplots,1,2);
hold on
plotSignals(listenerSignals, 'blue');
plotSignal(pointSignal, 'red'); %plot

%2
point = [1000 1000 1000]; %choose point
pointSignal = getSignalAtPoint(point, listenerSignals, listenerLocs,...
                            sampleRate); %run
%graph
plotSignal(pointSignal, 'black'); %plot

setupSignalEstimationGraph();
legend('Listeners signals');
% , 'Estimated signal at correct point', 'Estimated signal at other point'


