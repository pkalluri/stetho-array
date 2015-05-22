function out_signal = addMultipleSignals(in_signals)
%Add given normalized signals to generate a single sum signal

    out_signal = in_signals{1};
    
    nSignals = numel(in_signals);
    for iSignal = 2:nSignals
        curr_signal = in_signals{iSignal};
        out_signal = addTwoSignals(out_signal, curr_signal);
    end
    

end

