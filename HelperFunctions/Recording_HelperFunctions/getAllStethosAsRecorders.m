function recorders = getAllStethosAsRecorders(SAMPLE_RATE, SAMPLE_SIZE, NUMBER_OF_CHANNELS)
    
    a = audiodevinfo;
    inputs = a.input;
    nInputs = length(inputs);
    
    recorders(1) = audiorecorder; %init
    
    stethoNo = 1;
    for iInput = 1:nInputs
        %store if input is stethoscope
        if strfind(inputs(iInput).Name, 'C-Media USB Headphone Set  ) (Windows DirectSound')
            deviceID = inputs(iInput).ID;
            recorder = audiorecorder(SAMPLE_RATE, SAMPLE_SIZE, NUMBER_OF_CHANNELS, deviceID);
            
            recorders(stethoNo) = recorder;
            stethoNo = stethoNo + 1; %++
        end
    end
    
end