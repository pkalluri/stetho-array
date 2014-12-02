
% Estimate surface

x_vals = SURFACE_MIN_X:SURFACE_X_STEP:SURFACE_MAX_X;
y_vals = SURFACE_MIN_Y:SURFACE_Y_STEP:SURFACE_MAX_Y;

surfaceOfSignals = estimateSurfaceSignals(SURFACE_Z_COORDINATE, ...
        x_vals, y_vals, ...
        listenerSignals, LISTENER_LOCS, ...
        SIGNAL_EVALUATION_FUNCTION, ...
        SAMPLE_RATE);
    
% surfaceOfSignals = normalizeSurfaceOfSignals(surfaceOfSignals);

figure();
graphLocs(LISTENER_LOCS, LISTENER_COLORS, ...
    SURFACE_MIN_X, SURFACE_MAX_X, SURFACE_MIN_Y, SURFACE_MAX_Y);
hold on;
graphSurfaceSignals(x_vals, y_vals, surfaceOfSignals);

