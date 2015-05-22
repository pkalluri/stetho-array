function sample = calculateFirstHighSample( signal )
% Return maximum value of signal.

%     maxValue = max( signal(:,2) );
%     [r , ~] = find(signal == maxValue);
%     sample = r(1);    

    [r , ~] = find(signal(:,2)>=.8);
    sample = r(1);

end

