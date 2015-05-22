function graphListenerSignalsTogether( listenerSignals )

    setupSignalAxis();
    title('Listener Signals');
    hold on;
    
    nListeners = length(listenerSignals);
    for iListener = 1:nListeners
        plotSignalWithoutColor(listenerSignals{iListener});
    end
end

