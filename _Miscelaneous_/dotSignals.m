function d = dotSignals( s, s2 )
    s = switchNanstoZeros(s);
    s2 = switchNanstoZeros(s2);

    l = min( length(s), length(s2) );
    d = s(1:l, 2).*s2(1:l, 2);

end

