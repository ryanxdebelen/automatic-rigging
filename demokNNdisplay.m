function [clusterlist, newcluster, randomcluster, C, imgcounter] = demokNNdisplay(k, randomcluster, data, maxIter, vertices, subvertex, d, newfaces, subindex, C, imgcounter, charName)
% FUNCTION: Performs kNN clustering
% INPUT: k is the number of clusters
%        randomcluster contains the pseudo-random locations of the clusters
%        data contains information for the clustering
%        maxIter is the number of maximum iterations before the algorithm
%        stops. This will serve as a safety precaution just in case the
%        algorithm cannot converge
% OUTPUT: clusterlist contains indices where vertices have been clustered
%         newcluster contains the vertices that are contained in the
%         clusters
%         randomcluster contains the final locations of the clusters

whentostop = 1;
stop = 0;
prevcluster = zeros(1, length(data(:,1)));
clusterlist = zeros(1, length(data(:,1)));

%randomcluster = [];
% for i = 1:k,
%     for j = 1:d,
%         a = min(data(:,j));
%         b = max(data(:,j));
%         r = (b-a).*rand(1,1) + a;
%         randomcluster(:,j,i) = r;
%     end
% end
%d = 3;

if k == 6,
    
    for i = 1:k,
        r = randi(size(data,1));
        randomcluster(:,:,i) = data(r,:);
    end
    
    disp('Initializing head joint location...');
    headindex = find(vertices(:,2) == max(vertices(:,2)));
    randomcluster(:,:,1) = data(headindex(1),:);
    
    disp('Initializing left hand joint location...');
    lefthandhalf = find(and(vertices(:,2) > (mean(vertices(:,2)-1/4*mean(vertices(:,2)))), vertices(:,2) < (mean(vertices(:,2))+1/4*mean(vertices(:,2)))));
    lefthandhalfvertices = vertices(lefthandhalf,1);
    lefthandhalfvertex = find(lefthandhalfvertices == min(lefthandhalfvertices));
    
    lefthandindex = lefthandhalf(lefthandhalfvertex);
    lefthandindex = find(vertices(:,1) == min(vertices(:,1)));
    %lefthandindex = 9993;
    randomcluster(:,:,2) = data(lefthandindex(1),:);
    
    
    disp('Initializing right joint location...');
    righthandhalf = find(and(vertices(:,2) > (mean(vertices(:,2)-1/4*mean(vertices(:,2)))), vertices(:,2) < (mean(vertices(:,2))+1/4*mean(vertices(:,2)))));
    righthandhalfvertices = vertices(righthandhalf,1);
    righthandhalfvertex = find(righthandhalfvertices == max(righthandhalfvertices));
    
    righthandindex = righthandhalf(righthandhalfvertex);
    
    %righthandindex = 11524;
    righthandindex = find(vertices(:,1) == max(vertices(:,1)));
    randomcluster(:,:,3) = data(righthandindex(1),:);
    
    
    disp('Initializing left foot joint location...');
    leftfoothalf =  mean([min(vertices(:,1)) max(vertices(:,1))]);
    leftfoothalf = find(vertices(:,1) < leftfoothalf);
    
    leftfoothalfvertices = vertices(leftfoothalf,2);
    leftfoothalfvertex = find(leftfoothalfvertices == min(leftfoothalfvertices));
    
    leftfootindex = leftfoothalf(leftfoothalfvertex);
    %leftfootindex = 6267;
    randomcluster(:,:,4) = data(leftfootindex(1),:);
    
    clear torsoindex
    
    disp('Initializing right foot joint location...');
    rightfoothalf =  mean([min(vertices(:,1)) max(vertices(:,1))]);
    rightfoothalf = find(vertices(:,1) > rightfoothalf);
    
    rightfoothalfvertices = vertices(rightfoothalf,2);
    rightfoothalfvertex = find(rightfoothalfvertices == min(rightfoothalfvertices));
    
    rightfootindex = rightfoothalf(rightfoothalfvertex);
    %rightfootindex = 3520;
    randomcluster(:,:,5) = data(rightfootindex(1),:);
    
    
    disp('Initializing torso joint location...');
    torsoindex = find(and(vertices(:,2) > (mean(vertices(:,2)-1/4*mean(vertices(:,2)))), vertices(:,2) < (mean(vertices(:,2))+1/4*mean(vertices(:,2)))));
    %torsoindex = 8920;
    r = randi(size(torsoindex,1));
    randomcluster(:,:,6) = data(torsoindex(r),:);

elseif k == 4,
    meancluster = mean(subvertex);
    
    disp('Initializing left shoulder joint location...');
    upperleftx = find(subvertex(:,1) < meancluster(1));
    upperlefty = subvertex(upperleftx,2);
    
    upperleftyindex = find(upperlefty > meancluster(2));
    upperleft = upperlefty(upperleftyindex);
    upperleft = max(upperleft);
    upperleftindex = find(subvertex(:,2) == upperleft);
    
    randomcluster(:,:,1) = data(upperleftindex(1),:);
    
    
    disp('Initializing right shoulder joint location...');
    upperrightx = find(subvertex(:,1) > meancluster(1));
    upperrighty = subvertex(upperrightx,2);
    upperrightyindex = find(upperrighty > meancluster(2));
    upperright = upperrighty(upperrightyindex);
    upperright = max(upperright);
    upperrightindex = find(subvertex(:,2) == upperright);
    
    randomcluster(:,:,2) = data(upperrightindex(1),:);
    
    disp('Initializing left hip joint location...');
    lowerleftx = find(subvertex(:,1) < meancluster(1));
    lowerlefty = subvertex(lowerleftx,2);
    lowerleftyindex = find(lowerlefty < meancluster(2));
    lowerleft = lowerlefty(upperleftyindex);
    lowerleft = min(lowerleft);
    lowerleftindex = find(subvertex(:,2) == lowerleft);
    
    randomcluster(:,:,3) = data(lowerleftindex(1),:);
    
    
    disp('Initializing right hip joint location...');
    lowerrightx = find(subvertex(:,1) > meancluster(1));
    lowerrighty = subvertex(lowerrightx,2);
    lowerrightyindex = find(lowerrighty < meancluster(2));
    lowerright = lowerrighty(lowerrightyindex);
    lowerright = max(lowerright);
    lowerrightindex = find(subvertex(:,2) == lowerright);
    
    randomcluster(:,:,4) = data(lowerrightindex(1),:);
    
else
    
    % EDIT JUNE 11
    for i = 1:k,
        disp('Initializing joint location...');
        r = randi(size(data,1));
        randomcluster(:,:,i) = data(r,:);
    end
    
end


disp('Mesh segmentation ON GOING..');

while (stop ~= 1),
%     prompt = strcat('Iteration Count: ', num2str(whentostop));
%     disp(prompt);
    
    prevcluster = clusterlist;
    
    % Initialize variables for faster processing
    difference = zeros(length(data(:,1)), d, k);
    sumofdiff = zeros(length(data(:,1)), 1, k);
    distance = zeros(length(data(:,1)), 1, k);
    
    % For each vertex, get its distance with respect to all of the
    % clusters
    for i=1:k,
        randomcluster1(:,:,i) = (randomcluster(:,:,i)'*ones(1,length(data(:,1))))';
        difference(:,:,i) = (randomcluster1(:,:,i) - data).^2;
        sumofdiff(:,:,i) = difference(:,:,i)*ones(size(difference(:,:,i),2),1);
        distance(:,:,i) = sqrt(sumofdiff(:,:,i));
    end
    
    % For each vertex, get the cluster closest to it
    minimumdistance = min(distance(:,:,:), [], 3);
    
    clusterlist = zeros(1,length(minimumdistance));
    
    for i=1:length(minimumdistance),
        [row, column] = find(distance==minimumdistance(i));
        clusterlist(i) = column(1);
    end
    
    clusterlist = clusterlist';
    
    newcluster = zeros(length(data(:,1)), d, k);
    
    % Store the members of each cluster to a matrix
    for i=1:length(clusterlist),
        incluster = clusterlist(i);
        for j=1:k,
            if (incluster==j),
                newcluster(i,:,j) = data(i,:);
            end
        end
    end
    
    % Recompute the location of the clusters by getting the centroid of
    % its members
    for i=1:k,
        if (length(find(newcluster(:,:,i)~=0))~=0),
            randomcluster(:,:,i) = sum(newcluster(:,:,i))/ceil((length(find(newcluster(:,:,i)~=0)))/d);
        end
    end
    
    whentostop = whentostop + 1;
    
    % Check if the current cluster members are the same as the previous
    % cluster members. If they are the same, it means that the
    % clustering algorithm converged already.
    if (isequal(prevcluster,clusterlist)),
        whentostop = maxIter;
    end
    
    
%     Show the results of the first-level segmentation
if k == 6,
    for i = 1:size(newfaces,1),
        clusterindex = clusterlist(newfaces(i,1));
        if clusterindex == 1,
            C(i) = 10;
        elseif clusterindex == 2,
            C(i) = 130;
        elseif clusterindex == 3,
            C(i) = 140;
        elseif clusterindex == 4,
            C(i) = 150;
        elseif clusterindex == 5,
            C(i) = 160;
        elseif clusterindex == 6,
            C(i) = 170;
        end
    end
else
    if whentostop == 2,
       uq = unique(C);
       ccounter = min(uq(2:end));
       iccounter = ccounter;
    else
       iccounter = ccounter;
    end
    for i = 1:max(clusterlist),
        indices = [];
        indices = find(clusterlist == i);
        cindex = subindex(indices);
        findix = [];
        for j = 1:size(cindex,1),
            indix = find(newfaces(:,1) == cindex(j));
            findix = [findix; indix];
        end
        C(findix) = iccounter;
        iccounter = iccounter - 10;
    end
end

    % If ever the clustering algorithm cannot achieve convergence, the
    % algorithm stops after maxIter iterations.
    if whentostop == maxIter,
        stop = 1;
%         disp('Clustering algorithm DONE!');
    end
end

disp('Mesh segmentation DONE!');

end