function sound_surface = estimateSoundSurface( ...
                                x_coordinates_to_sample_sound, ... (m)
                                y_coordinates_to_sample_sound, ... (m)
                                z_coordinates_to_sample_sound, ... (m)
                                listeners_signals, ...
                                LISTENERS_LOCATIONS, ... (m)
                                SAMPLING_RATE, ...       (Hz)
                                SPEED_OF_SOUND, ...      (m/s)
                                WATCH_SIGNALS ...
                            )
                        
%     if graphAll
%         pointNo = 1;
%         obj=VideoWriter( strcat('m',int2str( randi(300) ),'.mp4') );
%         obj.FrameRate=10;
%         obj.Quality = 100;
%         open(obj);

%        h= figure;
%         ss = get(h,'Position');
%         pos1 = get(h,'OuterPosition')
%     end
    

    nXCoordinates = length(x_coordinates_to_sample_sound); %# x locs to sample
    nYCoordinates = length(y_coordinates_to_sample_sound); %# y locs to sample
    nZCoordinates = length(z_coordinates_to_sample_sound); %# z locs to sample

    sound_surface(nYCoordinates, nXCoordinates) = 0;%preallocate surface

    for iZCoordinate = 1:nZCoordinates
        current_z_coordinate = z_coordinates_to_sample_sound(iZCoordinate);
%       Generate a surface
        for iXCoordinate = 1:nXCoordinates
            for jYCoordinate = 1:nYCoordinates
                current_x_coordinate = ...
                    x_coordinates_to_sample_sound(iXCoordinate);
                current_y_coordinate = ...
                    y_coordinates_to_sample_sound(jYCoordinate);

                signal_from_current_point = estimateSignalFromPoint( ...
                    [current_x_coordinate current_y_coordinate current_z_coordinate], ...
                    listeners_signals, LISTENERS_LOCATIONS, SAMPLING_RATE, ...
                    SPEED_OF_SOUND ...
                );

%                 Create a video of the surface, evolving over samples

%                 num = estimateDottedSignal( ...
%                     [current_x_coordinate current_y_coordinate surfaceZCoord], ...
%                     listenerSignals, listenerLocs, sampleRate ...
%                     );
%                 surfaceOfSignals(jYCoordinate,iXCoordinate) = num;
    %             surfaceOfSignals(jYVal,iXVal) = signal;
    
    
            end %done with these y values
        end %done with these x values
    end %finished z values
end

