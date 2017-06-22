function [vertices, faces] = ReadOBJ(filepath)
% FUNCTION: reads the OBJ File and stores the x,y, and z
% coordinates of the vertices and triangle indices into variables
% INPUT : OBJ File Path
% OUTPUT: Vertices matrix containing the x, y, and z coordinates of the
%         mesh
%         Faces matrix containing the indices of the vertices that
%         makes up a triangle
% AUTHOR: Ryan Anthony J. de Belen
% DATE LAST MODIFIED: June 27, 2016

% Open the OBJ File
disp('Opening File...')
fid = fopen(filepath);

% Check if opening is successful
if fid~=-1,
    disp('Opening File SUCCESSFUL!');
else
    disp('Opening File FAILED!');
end

% Initialize variable counters
vcounter = 1;
fcounter = 1;

% Read the file per line
while 1,
    tline = fgetl(fid);
    % Check if the line is already the end of file
    if tline == -1,
        break
    end
    % Split the line into columns:
    % Column 1 contains the indicator if the information is for the
    % vertices (v) or for the faces (f)
    % Column 2 contains:
    % If Column 1 is v, x coordinate
    % If Column 1 is f, first index
    % Column 3 contains:
    % If Column 1 is v, y coordinate
    % If Column 1 is f, second index
    % Column 4 contains:
    % If Column 1 is v, z coordinate
    % If Column 1 is f, third index
    columns = strsplit(tline, ' ');
    if length(columns)==4,
        column1 = columns{1};
        column2 = columns{2};
        column3 = columns{3};
        column4 = columns{4};
        
        % Store the column values in a variable depending on Column 1
        if strcmp(column1, 'v'),
            %disp('Vertex FOUND!');
            vertices(vcounter, 1) = str2num(column2);
            vertices(vcounter, 2) = str2num(column3);
            vertices(vcounter, 3) = str2num(column4);
            vcounter = vcounter + 1;
        elseif strcmp(column1, 'f')
            %disp('Triangle FOUND!');
            column2 = strsplit(column2, '/');
            column3 = strsplit(column3, '/');
            column4 = strsplit(column4, '/');
            faces(fcounter, 1) = str2num(column2{1});
            faces(fcounter, 2) = str2num(column3{1});
            faces(fcounter, 3) = str2num(column4{1});
            fcounter = fcounter + 1;
        end
    end
end

% Close the OBJ File
disp('Closing File...');
fclose(fid);
disp('Closing File SUCCESSFUL!');
end