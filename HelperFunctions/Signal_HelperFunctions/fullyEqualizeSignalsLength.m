function equalized_signals = fullyEqualizeSignalsLength(signals)
%Equalizes signals length by padding signals with 1s as necessary
%   signals - Nx1 cells, where each cell contains 1 Sx2 signal matrix

equalized_signals = signals;

% Find min and max sample numbers
min_sample_number = inf; %find a smaller smaller
max_sample_number = 0;   %fomd a larger sample

nSignals = size(signals,1);
for iSignal = 1:nSignals
    current_signal = signals{iSignal};
    
%     Get first and last sample number of this signal
    first_sample_number = current_signal(1,1);
    nSamples = size(current_signal, 1);
    last_sample_number = current_signal(nSamples,1);

%     Check if extrema
    if last_sample_number > max_sample_number
        max_sample_number = last_sample_number;
    end
    if first_sample_number < min_sample_number
        min_sample_number = first_sample_number;
    end
end

% Make all signals have identical sample spans
% (i.e. Force identical first and last sample numbers across all signals)
for iSignal = 1:nSignals
    current_signal = signals{iSignal};
    
    first_sample_number = current_signal(1,1);
    if first_sample_number > min_sample_number
       
       sample_values = 
       sample_numbers = min_sample_number:first_sample_number
    end

    
    
    nSamples = size(current_signal, 1);
    last_sample_number = current_signal(nSamples,1);
    
    last_sample_number = size(current_signal,1); 
    if last_sample_number < max_sample_number
        equalized_signals{iSignal} = ...
            padSignalEnd(current_signal, max_sample_number-last_sample_number);
    end
    
    
    last_sample_number = size(current_signal,1); 
    if last_sample_number < max_sample_number
        equalized_signals{iSignal} = ...
            padSignalEnd(current_signal, max_sample_number-last_sample_number);
    end
end

end

