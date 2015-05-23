function recorders = getAllStethosAsRecorders(LISTENER_NAME_SIGNATURE, ...
                    SAMPLE_RATE, SAMPLE_SIZE, NUMBER_OF_CHANNELS)
    
    a = audiodevinfo;
    inputs = a.input;
    nInputs = length(inputs);
    
    recorders(1) = audiorecorder; %init
    
    stethoNo = 1;
    for iInput = 1:nInputs
        %store if input is stethoscope
        if strfind(inputs(iInput).Name, LISTENER_NAME_SIGNATURE)
            deviceID = inputs(iInput).ID;
            recorder = audiorecorder(SAMPLE_RATE, SAMPLE_SIZE, NUMBER_OF_CHANNELS, deviceID);
            
            recorders(stethoNo) = recorder;
            stethoNo = stethoNo + 1; %++
        end
    end
    
end