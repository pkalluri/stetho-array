function out_signal = addTwoSignals(signal1, signal2);
%Add two normalized signals to generate a single sum signal

    out_signal = [getSampleIndeces(signal1), ...
                  getSampleValues(signal1) + getSampleValues(signal2)
                 ];

end

