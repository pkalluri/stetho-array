listeners = getAllStethosAsRecorders(SAMPLE_RATE, SAMPLE_SIZE, NUMBER_OF_CHANNELS);
blockingSimultaneousRecord(listeners, RECORDING_TIME); %listen
listenerSignals = recordersToSignals(listeners);

if GRAPH_LISTENER_SIGNALS
    figure();
    graphSignals(listenerSignals, LISTENER_COLORS);
    title('before alignment');
end


% process
listenerSignals = matchFirstPeak(listenerSignals);

%slide an extra half second to the left, to eliminate leftover noise from
%calibration tap
for i = 1:length(listenerSignals)
   listenerSignals{i} = shiftRight(listenerSignals{i}, SAMPLE_RATE, -.5, true);
end

% graph
if GRAPH_LISTENER_LOCS
    figure();
    title('Listener Locations');
    graphLocs(LISTENER_LOCS, LISTENER_COLORS, SURFACE_MIN_X, SURFACE_MAX_X, SURFACE_MIN_Y, SURFACE_MAX_Y);
end


if GRAPH_LISTENER_SIGNALS
    figure();
    graphSignals(listenerSignals, LISTENER_COLORS);
end

