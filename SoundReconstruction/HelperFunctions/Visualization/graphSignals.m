function graphSignals( signals, color , num_plots, num_plots_so_far)
% Graphs given signals in individual subplots, in given colors

        
%   Set up graph
    nSignals = length(signals);
    for iSignal = 1:nSignals
        subplot(num_plots,1,iSignal + num_plots_so_far);
        plotSignal(  signals{iSignal}, color );
    end    

    xlabel('Discrete Samples');

    
end

