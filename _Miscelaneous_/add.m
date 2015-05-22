function sumSignal = add( signal1, signal2, assumeUnkownIsZero )
% Adds 2 signals, returning the sum.
    if isempty(signal1)
        sumSignal = signal2;
    elseif isempty(signal2)
        sumSignal = signal1;
    elseif length(signal1)>length(signal2) %1 longer
        %make same dimensions
        deltaLength = length(signal1) - length(signal2);
        if not(assumeUnkownIsZero)
            signal2_y_extended = [
                                    signal2(:,2);
                                    NaN([deltaLength 1])
                                    ]; %assume NaN
        else %treat unkown signal as value 0
            signal2_y_extended = [
                                    signal2(:,2);
                                    zeros([deltaLength 1])
                                    ];
        end
        
        %add
        sumSignal = [signal1(:,1) signal1(:,2)+signal2_y_extended];
    else %signal2 longer
        %make same dimensions
        deltaLength = length(signal2) - length(signal1);
        if not(assumeUnkownIsZero)
            signal1_y_extended = [
                                    signal1(:,2);
                                    NaN([deltaLength 1])
                                    ]; %assume NaN
        else %treat unkown signal as value 0
            signal1_y_extended = [
                                    signal1(:,2);
                                    zeros([deltaLength 1])
                                    ];
        end
        %add
        sumSignal = [signal2(:,1) signal2(:,2)+signal1_y_extended];
    end
    
end