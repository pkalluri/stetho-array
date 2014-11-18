function sampleRate = getSampleRate( signal )
%Return sample rate, in samples/sec

    if size(signal,1) < 2 %num columns
        error('Less than 2 samples. Cannot get sample rate');
    else
       sampleRate = 1./signal(2,1) - signal(1,1);
    end
    
end

