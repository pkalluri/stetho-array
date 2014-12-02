listeners = getAllStethosAsRecorders(SAMPLE_RATE, SAMPLE_SIZE, NUMBER_OF_CHANNELS);
timeToIgnore = blockingSimultaneousRecord(listeners, RECORDING_TIME); %listen
listenerSignals = recordersToSignals(listeners);
% listenerSignals = matchStartTime(listenerSignals, SAMPLE_RATE, timeToIgnore);
listenerSignals = matchFirstPeak(listenerSignals);


if GRAPH_LISTENER_LOCS
    figure();
    title('Listener Locations');
    graphLocs(LISTENER_LOCS, LISTENER_COLORS, SURFACE_MIN_X, SURFACE_MAX_X, SURFACE_MIN_Y, SURFACE_MAX_Y);
end


if GRAPH_LISTENER_SIGNALS
    figure();
    graphSignals(listenerSignals, LISTENER_COLORS);
end

