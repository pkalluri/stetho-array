function delta_samples = timeToSamples( delta_time, ... %(sec)
                                          SAMPLING_RATE ... %(Hz)
                                          )
%Converts amount of time to approximate number of samples

delta_samples = round(delta_time * SAMPLING_RATE);

end

