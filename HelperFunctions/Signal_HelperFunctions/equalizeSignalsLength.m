function equalized_signals = equalizeSignalsLength(signals)
%Equalizes signals length by padding end of signals with 0s as necessary
%   signals - Nx1 cells, where each cell contains 1 Sx2 signal matrix

equalized_signals = signals;

% Find max-length signal
max_size = 0;

nSignals = size(signals,1);
for iSignal = 1:nSignals
    current_signal = signals{iSignal};
    current_signal_size = size(current_signal,1); 
    if current_signal_size > max_size
        max_size = current_signal_size;
    end
end

% Make all signals the length of the max-length signal
for iSignal = 1:nSignals
    current_signal = signals{iSignal};
    current_signal_size = size(current_signal,1); 
    if current_signal_size < max_size
        equalized_signals{iSignal} = ...
            padSignalEnd(current_signal, max_size-current_signal_size);
    end
end

end

