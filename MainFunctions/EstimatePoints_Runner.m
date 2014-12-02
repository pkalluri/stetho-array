
sizePointLocs = size(POINT_LOCS);
nPointLocs = sizePointLocs(1);

figure();
hold on;
for iPointLoc = 1:nPointLocs;
    disp(POINT_LOCS(iPointLoc,1:3));
    pointSignal = getSignalAtPoint(POINT_LOCS(iPointLoc,1:3), ...
                                listenerSignals, LISTENER_LOCS,...
                                SAMPLE_RATE); %run
    
    plotSignalWithoutColor(pointSignal);
    title(  strcat(  'Signal ',int2str(iPointLoc)  )  );
end

figure();
graphLocs(POINT_LOCS, POINT_COLORS, ...
    SURFACE_MIN_X, SURFACE_MAX_X, SURFACE_MIN_Y, SURFACE_MAX_Y);
