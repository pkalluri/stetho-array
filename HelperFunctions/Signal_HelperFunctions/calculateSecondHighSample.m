function sample = calculateSecondHighSample( signal )
% Return maximum value of signal.

%     maxValue = max( signal(:,2) );
%     [r , ~] = find(signal == maxValue);
%     sample = r(1);    

    [r , ~] = find(signal(:,2)>=.3);
    sample = r(2);

end

