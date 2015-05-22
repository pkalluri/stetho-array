function graphSignals( signals, color , num_plots)
% Graphs given signals in individual subplots, in given colors

        
%   Set up graph
    nSignals = length(signals);
    for iSignal = 1:nSignals
        subplot(num_plots,1,iSignal + 1); %1 emitter
        plotSignal(  signals{iSignal}, color );
    end    

    xlabel('Discrete Samples');

    
end

