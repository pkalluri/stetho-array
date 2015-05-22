function meanAbsValue = calculateMeanAbsValue( signal )

    meanAbsValue = sum(  abs( signal(:,2) )   )/length(signal);
end

