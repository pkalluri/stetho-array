function shifted_signal = shiftLaterInSamples( signal, nSamples )
%Shifts signal later in time, by given number of samples

samples = [
        zeros([nSamples 1]); %zeros padding beginning, shifting signal
        signal(:,2) %original signal
        ];
indeces = (0:length(samples)-1)';

shifted_signal = [indeces, samples];

end

