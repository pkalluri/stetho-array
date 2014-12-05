function graphLocs(locs, colors, xmin, xmax, ymin, ymax)

% ylim([ymin ymax]);
% xlim([xmin xmax]); 
% zlim([-1 1]); %include z surface
xlabel('x (m)'); % x-axis label
ylabel('y (m)'); % y-axis label
zlabel('z (m)'); % z-axis label

for iLoc = (1:length(locs)-1)
    scatter3(locs(iLoc,1),locs(iLoc,2),locs(iLoc,3), ...
                                colors{iLoc}, 'filled');
    hold on;
end

end

