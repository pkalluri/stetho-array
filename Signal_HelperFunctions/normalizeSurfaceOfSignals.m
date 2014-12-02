function normalizedSurfaceOfSignals =  normalizeSurfaceOfSignals( surfaceOfSignals )

    maxValue = max(max(surfaceOfSignals));
    disp('max value');
    disp(maxValue);
    
    normalizedSurfaceOfSignals = surfaceOfSignals/maxValue;


end

