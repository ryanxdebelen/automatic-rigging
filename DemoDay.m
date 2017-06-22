d = dir('Input');

disp('Loading input OBJ file...');
if (strcmp(d(4).name,'Model1.obj')),
    load('Model1_GPSClustering.mat');
elseif (strcmp(d(4).name,'Model2.obj')),
    load('Model2_GPSClustering.mat');
elseif (strcmp(d(4).name,'Model3.obj')),
    load('Model3_GPSClustering.mat');
elseif (strcmp(d(4).name,'Model11.obj')),
    load('Model11_GPSClustering.mat');
elseif (strcmp(d(4).name,'Model16.obj')),
    load('Model16_GPSClustering.mat');
elseif (strcmp(d(4).name,'CaptainAmerica.obj')),
    load('CaptainAmerica.mat');
end
disp('Loading input OBJ file DONE!!!');

randomcluster = [];
C = [];
imgcounter = 1;
[clusterlist, newcluster, randomcluster, C, imgcounter] = demokNNdisplay(6, randomcluster, GPSfinal, maxIter, vertices, subvertex, dim, newfaces, [1:size(vertices,1)], C, imgcounter, saveName);

clear randomcluster1;
clear finalcluster;

maxIter = 30;

finalclustercounter = 1;
ccounter = 1;

% Perform the second-level segmentation according to the minor parts of the
% human body (neck, shoulders, elbows, arms, hips, knees and toes)
for firstlevel=1:6,
    clear GPSSubcluster subvertex subindex;
    clusterindex = find(clusterlist == firstlevel);
    GPSSubcluster = GPSfinal(clusterindex,:);
    subvertex = vertices(clusterindex,:);
    subindex = clusterindex;
    if firstlevel == 1,
        subclusterlist = ones(1,size(subindex,1));
    elseif firstlevel == 6,
        % maxIter = 10;
        [subclusterlist, subnewcluster, randomcluster,C, imgcounter] = demokNNdisplay(4, randomcluster, GPSSubcluster, maxIter,vertices, subvertex, dim, newfaces, subindex, C, imgcounter, saveName);
    else
        [subclusterlist, subnewcluster, randomcluster, C, imgcounter] = demokNNdisplay(3, randomcluster, GPSSubcluster, maxIter,vertices, subvertex, dim, newfaces, subindex, C, imgcounter, saveName);
    end
    for i = 1:max(subclusterlist),
        indices = [];
        indices = find(subclusterlist == i);
        finalcluster(finalclustercounter,1:length(indices)) = subindex(indices);
        cindex = subindex(indices);
        CC(cindex) = ccounter;
        ccounter = ccounter + 1;
        finalclustercounter = finalclustercounter + 1;
    end
end

DemoDisplaySkeleton;

jointlocation = finaljoints(3:20,:);

DemoFBXCreator