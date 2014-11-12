function [ sumSignal ] = add( signal1, signal2 )
%     %Adds this AudioSignal and other AudioSignal, where they intersect ONLY
% 
% %     %Case where either is length 1 or 0, and other cases for this functn
% %     if size(signal1) == [0 1] %signal1 is empty
% %         sumSignal = signal2
%     
%     %if other can line up directly on top of somewhere on this
%     timeStep1 = timeStep(signal1);
%     timeStep2 = timeStep(signal2);
%     startTime1 = startTime(signal1);
%     startTime2 = startTime(signal2);
%     overlapStart1 = 0;
%     overlapStart2 = 0;
%     if (timeStep1 == timeStep2) && (mod(startTime1-startTime2, timeStep1)==0)
%         %find overlapping step locations
%         %THIS IS INEFFICIENT
%         if signal1(overlapStart1,1) <= signal2(overlapStart2,1)
%             while signal1(overlapStart1,1) < signal2(overlapStart2,1)
%                 overlapStart1 = overlapStart1 + 1;
%             end
%         else
%            while signal1(overlapStart1,1) > signal2(overlapStart2,1)
%                 overlapStart2 = overlapStart2 + 1;
%             end 
%         end
% 
%         %add any terms where signals overlaps
%         numOverlapSteps = min(size(signal1,1)-overlapStart1, size(signal2,1)-overlapStart2);
%         sumSignal = cat(2, signal1(overlapStart1:overlapStart1+numOverlapSteps,1), signal1(overlapStart1:overlapStart1+numOverlapSteps,2)+signal2(overlapStart2:overlapStart2+numOverlapSteps,2));            
%             
%     else
%         error('Not yet implemented');
%     end

 %Adds this AudioSignal and other AudioSignal, where they intersect ONLY

    if ( size(signal1,1) == 0 )
        sumSignal = signal2;
    elseif ( size(signal2,1) == 0 )
        sumSignal = signal1;
    else
        %if other can line up directly on top of somewhere on this
        timeStep1 = timeStep(signal1);
        timeStep2 = timeStep(signal2);
        startTime1 = startTime(signal1);
        startTime2 = startTime(signal2);
        overlapStart1 = 1;
        overlapStart2 = 1;
        if (size(signal1,1)==1 || size(signal2,1)==1 || (timeStep1 == timeStep2)) && (mod(startTime1-startTime2, timeStep1)==0)
            %find overlapping step locations
            %THIS IS INEFFICIENT
            if signal1(overlapStart1,1) <= signal2(overlapStart2,1)
                while signal1(overlapStart1,1) < signal2(overlapStart2,1)
                    overlapStart1 = overlapStart1 + 1; %find where in 1 overlaps with start of 2
                end
                sumSignal = signal1(1:overlapStart1-1,:); %the part of signal 1 before overlap
            else
                while signal1(overlapStart1,1) > signal2(overlapStart2,1)
                    overlapStart2 = overlapStart2 + 1;
                end
                sumSignal = signal2(1:overlapStart2-1,:); %the part of signal 2 before overlap
            end

            %add any terms where signals overlaps
            numOverlapSteps = min(size(signal1,1)-overlapStart1, size(signal2,1)-overlapStart2);
            overlappedTime = signal1(overlapStart1:overlapStart1+numOverlapSteps,1);
            overlappedY = signal1(overlapStart1:overlapStart1+numOverlapSteps,2)+signal2(overlapStart2:overlapStart2+numOverlapSteps,2);
            overlappedSignal = [ overlappedTime, overlappedY];
            sumSignal = [sumSignal; overlappedSignal];

            %add leftovers
            if size(signal1,1) > overlapStart1+numOverlapSteps
                leftover = signal1(overlapStart1+numOverlapSteps+1:end,:);
                sumSignal = [sumSignal; leftover]; %the part of signal 1 after overlap
                disp('leftover 1')
            elseif size(signal2,1) > overlapStart2+numOverlapSteps
                leftover = signal2(overlapStart2+numOverlapSteps+1:end,:);
                sumSignal = [sumSignal; leftover]; %the part of signal 2 after overlap
                disp('leftover 2')
            end
        else
            error('Cant match up');
        end
    end
end