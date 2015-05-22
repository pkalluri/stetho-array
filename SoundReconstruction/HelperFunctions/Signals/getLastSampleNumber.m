function last_sample_number = getLastSampleNumber(signal)
%Get last sample number

    num_samples = size(signal, 1);
    last_sample_number = signal(num_samples,1);


end


