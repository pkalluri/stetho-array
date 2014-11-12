function noisySignal = addNoise( signal )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

    noisySignal = signal + zeros(size(signal,1),2);
end

