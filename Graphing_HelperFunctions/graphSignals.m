function graphSignals( signals, colors )

    nSignals = length(signals);
    for iSignal = 1:nSignals
        subplot(nSignals,1,iSignal);
        plotSignal(  signals{iSignal}, colors{iSignal}  );

        setupSignalAxis();
        title(strcat('Signal ',int2str(iSignal)));
        ylim([-2 2]);
    end
    

end

