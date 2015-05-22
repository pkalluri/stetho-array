function zerosS = switchNanstoZeros(s)

    r = find(isnan(s(:,2)));
    
    for i=1:length(r)
       rowToChange = r(i);
       
       s(rowToChange,2) = 0;
    end
    
    zerosS = s;


end

