function graphLocations(listeners_locations, locations_color, ...
                        emitter_location, emitter_color, ...
                        x_maximum, y_maximum)
% Graphs given locations of listeners and emitter

    hold on;
    
%   Set up graph
    title('Location of Emitter and Listeners');
    
    view([-1 -1 .95]);
    xlim([0 x_maximum]); 
    ylim([0 y_maximum]);
    zlim([-2 2]);
    xlim manual;
    ylim manual;
    zlim manual;
    
    xlabel('x (m)');
    ylabel('y (m)');
    zlabel('z (m)');
    
    
    
%   Graph locations
    for iLocation = (1:length(listeners_locations))
        scatter3(listeners_locations(iLocation,1),listeners_locations(iLocation,2),listeners_locations(iLocation,3), ...
                                    locations_color, 'filled');
    end
    
    scatter3( ...
        emitter_location(1,1), ...
        emitter_location(1,2), ...
        emitter_location(1,3), ...
        emitter_color, 'filled' ...
    );

% TODO multiple emitters
%     for iLocation = (1:length(emitter))
%         scatter3(locations(iLocation,1),locations(iLocation,2),locations(iLocation,3), ...
%                                     emitter_color, 'filled');
%     end


    

    hold off;

end

