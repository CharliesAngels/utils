function makeRotatingMovie(file_format,filename);

counter = 1;

% Loop over the specified angles
for angle = 180:-5:-180,
    
    % Change the viewing angle for each frame
    view(angle,30);
    
    % Save a frame at a time to the movie variable "mv"
    mv(counter)=getframe(gcf);
    
    % Slow the viewing down on fast machines
    pause(0.05);
    
    % Update frame counter
    counter = counter+1;
    
end

% Choose whether you want to save the movie as 'avi' or 'mp4'
%file_format = 'avi';

% Choose whether you want to save the movie as 'avi' or 'mp4'
%file_format = 'avi';

% Write movie to disk (choose file format first)
if strcmp(file_format, 'avi')
    writerObj = VideoWriter(filename, 'Motion JPEG AVI');
elseif strcmp(file_format, 'mp4')
    writerObj = VideoWriter(filename, 'MPEG-4');
end
writerObj.FrameRate = 15;
open(writerObj);
writeVideo(writerObj,mv);
close(writerObj);
