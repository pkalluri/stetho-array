function t = timeStep( signal )
    %Length >=2, assumed
    
    t = signal(2,1) - signal(1,1);
end

