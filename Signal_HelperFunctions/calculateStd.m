function val = calculateStd( signal )
% Return maximum value of signal.

    nonNans = find( not(isnan(signal(:,2))) );
    val = std( nonNans );

end

