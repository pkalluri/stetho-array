function graphListenersLocations(listeners_locations, locations_color, ...
                        x_maximum, y_maximum)
% Graphs given locations of listeners

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
    
    

    hold off;

end

