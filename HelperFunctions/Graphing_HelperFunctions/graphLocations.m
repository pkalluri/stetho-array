function graphLocations(locations, locations_colors, x_maximum, y_maximum)
% Graphs given locations as points in given colors, with given axes limits

% FIXME: Figure out how to set axes limits. Below lines don't work correctly
% xlim([0 x_maximum]); 
% ylim([0 y_maximum]);

%Graph points at locations
for iLocation = (1:length(locations))
    scatter3(locations(iLocation,1),locations(iLocation,2),locations(iLocation,3), ...
                                locations_colors{iLocation}, 'filled');
    hold on;
end

% Add axis labels
xlabel('x (m)');
ylabel('y (m)');
zlabel('z (m)');


end

