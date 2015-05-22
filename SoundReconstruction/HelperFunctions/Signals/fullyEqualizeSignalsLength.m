function equalized_signals = fullyEqualizeSignalsLength(signals)
%Equalizes signals length by padding signals with 1s as necessary
%   signals - Nx1 cells, where each cell contains 1 Sx2 signal matrix

    equalized_signals = signals;

    % Find min and max sample numbers
    min_sample_number = inf; %work downwards
    max_sample_number = 0;   %work upwards

    nSignals = numel(signals);
    for iSignal = 1:nSignals
        curr_signal = signals{iSignal};

    %     Get first and last sample number of this signal
        first_sample_number = getFirstSampleNumber(curr_signal); %first is smallest
        last_sample_number = getLastSampleNumber(curr_signal); %last is largest

    %     Check if extrema
        if first_sample_number < min_sample_number
            min_sample_number = first_sample_number;
        end
        if last_sample_number > max_sample_number
            max_sample_number = last_sample_number;
        end
    end

    % Make all signals have identical sample spans
    % (i.e. Force identical first and last sample numbers across all signals)
    for iSignal = 1:nSignals
        curr_signal = signals{iSignal};

        equalized_signals{iSignal} = ...
            padSignalDomain(curr_signal, min_sample_number, max_sample_number);
    end

end

