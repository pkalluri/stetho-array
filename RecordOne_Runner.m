sounds(1) = audiorecorder;
blockingSimultaneousRecord(sounds, RECORDING_TIME); %listen
mainSound = sounds(1);