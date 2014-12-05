function graphSurfaceSignals( x,y,z )

    pcolor(x,y,z);
    shading interp;

    zlim([-20 20]);
    xlabel('x (m)'); % x-axis label
    ylabel('y (m)'); % x-axis label
    zlabel('z (m)'); % x-axis label
    title('Estimated Surface');

end

