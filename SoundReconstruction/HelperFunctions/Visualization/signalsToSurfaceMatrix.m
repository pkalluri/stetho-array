function surface_3d = signalsToSurfaceMatrix( sound_surface_signals )
%   Generate 3d surface representing time-lapse of surface

    sound_surface_values = sound_surface_signals;
    
    
    nSignals = numel(sound_surface_signals);
    for iSignal = 1:nSignals 
        curr_signal = sound_surface_signals{iSignal};
        sound_surface_values{iSignal} = getSampleValues(curr_signal)';
    end
    
    surface_3d = cell2mat(arrayfun(@(x)permute(x{:},[3 1 2]),sound_surface_values,...
                                               'UniformOutput',false));
    max_value = max(max(max(surface_3d)));
    surface_3d = ((surface_3d/max_value)).^2; %normalize to 0->1, then square
end

