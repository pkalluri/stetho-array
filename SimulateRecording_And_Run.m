% Simulates listener signals and runs analysis on them

% % % % % % % % % % % % % % % %
% PRIOR
% % % % % % % % % % % % % % % % 
Assumed_Constants;  %Load constants
Simulated_Parameters_4;  %Load parameters

% % % % % % % % % % % % % % % %
% LISTENING
% % % % % % % % % % % % % % % % 
if DISPLAY_LISTENERS_LOCATIONS %Display locations, if desired
    figure();
    graphLocations(LISTENERS_LOCATIONS, LISTENERS_COLORS, SURFACE_WIDTH, SURFACE_HEIGHT);
    if SHOULD_GRAPH_EMITTER_LOCATION
%         TODO
    end
    title('Listener Locations');
end

% Simulate listener signals
Simulate_Listeners_Signals_Given_One_Emission;
                    
if DISPLAY_LISTENERS_SIGNALS %Display signals, if desired                    
%     TODO
end



% % % % % % % % % % % % % % % %
% ANALYSIS
% % % % % % % % % % % % % % % % 

%Estimate sound surface, based on signals heard, if indicated desired
if ESTIMATE_SOUND_SURFACE                    
    Estimate_Sound_Surface; 
end

% if DISPLAY_SOUND_SURFACE %Display signals, if desired                    
% 	Display_Sound_Surface;
% end


% if ESTIMATE_POINT_SIGNALS
%     EstimatePoints_Runner; %Estimate sound location, based on recordings
% end