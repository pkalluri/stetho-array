Constants;
ParametersLR;
RecordAll_Runner;

if ESTIMATE_SURFACE_SIGNALS
    EstimateSurface_Runner;
end

if ESTIMATE_POINT_SIGNALS
    EstimatePoints_Runner;
end