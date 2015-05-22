function shifted_signal = shiftLaterInSamples( signal, num_samples )
%Shifts signal later in time, by given number of samples


    samples = getSampleValues(signal);


    indeces = (getFirstSampleNumber(signal) + num_samples: ...
                getLastSampleNumber(signal) + num_samples)';
%     if num_samples > 0 
%         samples = [
%                 zeros([num_samples 1]); %zeros padding beginning, shifting signal
%                 getSampleValues(signal) %original signal
%                 ];
%             
%         
%         indeces = (getFirstSampleNumber(signal): ...
%                     getLastSampleNumber(signal) + num_samples)';
% 
%     end
%     if num_samples < 0
%         samples = getSampleValues(signal);
%             
%         
%         indeces = (getFirstSampleNumber(signal) + num_samples: ...
%                     getLastSampleNumber(signal) + num_samples)';   
%     end
%     
    shifted_signal = [indeces, samples];

        
    
end

