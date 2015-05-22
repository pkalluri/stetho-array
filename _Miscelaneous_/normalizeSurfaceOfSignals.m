function normalizedSurfaceOfSignals =  normalizeSurfaceOfSignals( surfaceOfSignals )

    maxValue = max(max(surfaceOfSignals));
    
    normalizedSurfaceOfSignals = surfaceOfSignals/maxValue;


end

