function d = dotSignals( s, s2 )
    l = min( length(s), length(s2) );
    disp(l);
    d = s(1:l, 2).*s2(1:l, 2);
    d = sum(d);

end

