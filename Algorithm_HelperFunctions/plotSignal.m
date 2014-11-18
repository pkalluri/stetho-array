function plotSignal( signal, color )
%Plot given signal in given color.

    xvals = signal(:,1);
    yvals = signal(:,2);
    plot(xvals',yvals',color);


end

