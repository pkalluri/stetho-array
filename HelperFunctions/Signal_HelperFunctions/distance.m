function d = distance(p1, p2)
    d = 0;
    for variable = 1:3 %x, y, z
        d = d + (p1(variable) - p2(variable))^2;
    end
    d = sqrt(d);
end

