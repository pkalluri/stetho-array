function padded_signal = padSignalEnd( signal, nSamples )
%Shifts signal later in time, by given number of samples

samples = [
        signal(:,2) %original signal
        zeros([nSamples 1]); %zeros padding beginning, shifting signal
        ];
indeces = (0:length(samples)-1)';

padded_signal = [indeces, samples];

end

