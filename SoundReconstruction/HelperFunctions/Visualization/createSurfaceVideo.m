function createSurfaceVideo(x_coords, y_coords, surface_3d)
%Create 'movie' visualization of sound, as reconstructed
    
    hold on;
        
    xlabel('x (m)');
    ylabel('y (m)');
    zlabel('z (m)');
    

    
    nSamples = size(surface_3d, 3);
    for iSample = 1:nSamples
        title(strcat('Reconstructed Sound Map at Sample ', int2str(iSample)));
        view([-1 -1 .5]);
        zlim([-2 2]);
        zlim manual;
        surf(x_coords, y_coords, surface_3d(:,:,iSample)  );
        pause(.2);
    end
    

    
%          Todo: save movie                   
%     if graphAll
%         pointNo = 1;
%         obj=VideoWriter( strcat('m',int2str( randi(300) ),'.mp4') );
%         obj.FrameRate=10;
%         obj.Quality = 100;
%         open(obj);

%        h= figure;
%         ss = get(h,'Position');
%         pos1 = get(h,'OuterPosition')
%     end
    

end

