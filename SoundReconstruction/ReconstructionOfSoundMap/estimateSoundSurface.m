function estimateSoundSurface( ...
                                x_coordinates_to_sample, ... (m)
                                y_coordinates_to_sample, ... (m)
                                z_coordinates_to_sample, ... (m)
                                listeners_signals, ...
                                LISTENERS_LOCATIONS, ... (m)
                                SAMPLING_RATE, ...       (Hz)
                                SPEED_OF_SOUND ...      (m/s)
                            )


    nXCoordinates = length(x_coordinates_to_sample); %# x locs to sample
    nYCoordinates = length(y_coordinates_to_sample); %# y locs to sample
    nZCoordinates = length(z_coordinates_to_sample); %# z locs to sample

    signal_surface = cell(nYCoordinates, nXCoordinates); %preallocate


    for iZCoordinate = 1:nZCoordinates
        curr_z_coordinate = z_coordinates_to_sample(iZCoordinate);
                
%       Generate a surface
        for iXCoordinate = 1:nXCoordinates
            for jYCoordinate = 1:nYCoordinates
                curr_x_coordinate = ...
                    x_coordinates_to_sample(iXCoordinate);
                curr_y_coordinate = ...
                    y_coordinates_to_sample(jYCoordinate);

                signal_surface{jYCoordinate, iXCoordinate} = ...
                    estimateSignalFromPoint( ...
                    [curr_x_coordinate curr_y_coordinate curr_z_coordinate], ...
                    listeners_signals, LISTENERS_LOCATIONS, SAMPLING_RATE, ...
                    SPEED_OF_SOUND ...
                );
    
            end %done with these y values
        end %done with these x values
        
        signal_surface = fullyEqualizeSignalsLength(signal_surface);
        
%       Generate sound surface
        sound_surface_evoution = signalsToSurfaceMatrix(signal_surface);     
        
        createSurfaceVideo(x_coordinates_to_sample, ...
                            y_coordinates_to_sample,...
                            sound_surface_evoution);

    end %finished all z values
end

