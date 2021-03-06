%Estimates sound surface, based on signals heard

% Locations to sample sound (m)
x_coords_to_sample_sound = 0:SURFACE_SAMPLING_PERIOD:SURFACE_WIDTH;
y_coords_to_sample_sound = 0:SURFACE_SAMPLING_PERIOD:SURFACE_HEIGHT;
z_coords_to_sample_sound = Z_COORDINATES_TO_SAMPLE;

estimateSoundSurface( ...
                x_coords_to_sample_sound, ...
                y_coords_to_sample_sound, ...
                z_coords_to_sample_sound, ...
                listeners_signals, LISTENERS_LOCATIONS, ...
                SAMPLING_RATE, ...
                SPEED_OF_SOUND ...
                    );