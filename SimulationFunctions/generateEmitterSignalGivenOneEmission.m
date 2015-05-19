function emitter_signal = generateEmitterSignalGivenOneEmission( ...
                            recording_duration, ... %(sec)
                            SAMPLING_RATE, ...      %(Hz)
                            sound_emitter_timestamp ... %sound time(sec)
                            )
%Simulates emitter signal

nSamples = SAMPLING_RATE * recording_duration;
indeces = (0: 1 : nSamples)'; %column, indexing samples

% sound is emitted at this sample number
sound_emitter_sample_number = SAMPLING_RATE * sound_emitter_timestamp + 1;

samples = zeros([nSamples + 1,1]); %column, containing sampled values
samples( sound_emitter_sample_number , 1) = 1;


emitter_signal = [indeces, samples];


end

