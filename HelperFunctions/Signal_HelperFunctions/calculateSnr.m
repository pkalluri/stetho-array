function val = calculateSnr( signal )
% Return maximum value of signal.

    nonNans = find( not(isnan(signal(:,2))) );
    val = snr( nonNans );

end

