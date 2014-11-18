function noisySignal = addNoise( signal, maxNoise )
%Given a signal and a max threshold on noise, return a simulated noisy signal.

    noise = rand([length(signal) 1])*maxNoise;
    noisySignal = [signal(:,1) signal(:,2)+noise];
end

