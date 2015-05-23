function graphEmitterLocation( ...
                        emitter_location, emitter_color, ...
                        x_maximum, y_maximum)
% Graphs given locations of emitter

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

    
%   Graph location
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

