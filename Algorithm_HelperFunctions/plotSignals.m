function plotSignals( signals, color )
%Plot all given signals in given color.

    for i = 1:length(signals)
        plotSignal(signals{i}, color);
    end
    
end

