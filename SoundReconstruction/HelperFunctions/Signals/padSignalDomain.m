function padded_signal = padSignalDomain( ...
                        signal, ...
                        new_first_sample_number, ...
                        new_last_sample_number)
%Pads the given signal with zeros until it has the given first and last
%sample numbers. Given first and last samples numbers must be outside the
%initial domain of the signal.


    beginning_padding_size = 0;
    ending_padding_size = 0;
    
    first_sample_number = getFirstSampleNumber(signal);
    if first_sample_number > new_first_sample_number
        beginning_padding_size = first_sample_number - new_first_sample_number;
    end
    
    last_sample_number = getLastSampleNumber(signal);
    if last_sample_number < new_last_sample_number
        ending_padding_size = new_last_sample_number - last_sample_number;
    end
    
    indeces = (new_first_sample_number:new_last_sample_number)';
    samples = [
            zeros([beginning_padding_size 1]) %beginning padding
            signal(:,2) %original signal
            zeros([ending_padding_size 1]) %ending padding
            ];

    padded_signal = [indeces, samples];
    
end

