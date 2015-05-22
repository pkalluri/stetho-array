function num = calculateNumMaxes( signal )
% Return maximum value of signal.

    maxValue = max( signal(:,2) );
    [r , ~] = find(signal == maxValue);
    num = -1*length(r);

end

