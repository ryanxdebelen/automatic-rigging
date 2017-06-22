clear all; close all;

struct_input = dir('Input4');
meshcounter = 3;
modelname = struct_input(meshcounter).name;
filepath = strcat('Input4/', modelname);

saveName = modelname(1:end-4);

[vertices, oldfaces] = ReadOBJ(filepath);
newfaces = oldfaces;

vertices1(:,3) = vertices(:,3)-min(vertices(:,3));
vertices1(:,2) = vertices(:,2)-min(vertices(:,2));
vertices1(:,1) = vertices(:,1)-min(vertices(:,1));
%vertices1(:,1) = vertices1(:,1)*2;
vertices = vertices1;

edgecounter = 1;

for i = 1:size(newfaces,1),
    if (newfaces(i,1) < newfaces(i,2)),
        edges(edgecounter,1) = newfaces(i,1);
        edges(edgecounter,2) = newfaces(i,2);
    else
        edges(edgecounter,1) = newfaces(i,2);
        edges(edgecounter,2) = newfaces(i,1);
    end
    faceref(edgecounter,1) = i;
    edgecounter = edgecounter + 1;
    
    if (newfaces(i,2) < newfaces(i,3)),
        edges(edgecounter,1) = newfaces(i,2);
        edges(edgecounter,2) = newfaces(i,3);
    else
        edges(edgecounter,1) = newfaces(i,3);
        edges(edgecounter,2) = newfaces(i,2);
    end
    faceref(edgecounter,1) = i;
    edgecounter = edgecounter + 1;
    
    if (newfaces(i,1) < newfaces(i,3)),
        edges(edgecounter,1) = newfaces(i,1);
        edges(edgecounter,2) = newfaces(i,3);
    else
        edges(edgecounter,1) = newfaces(i,3);
        edges(edgecounter,2) = newfaces(i,1);
    end
    faceref(edgecounter,1) = i;
    edgecounter = edgecounter + 1;
    
    face = newfaces(i,:);
    facenormals(i,:) = cross(vertices(face(2),:)-vertices(face(1),:), vertices(face(3),:)-vertices(face(1),:));
    %     facenormals(i,:) = facenormals(i,:)./norm(facenormals(i,:));
    facearea(i,1) = (1/2)*norm(facenormals(i,:));
    %     facenormals(i,:) = facenormals(i,:)./norm(facenormals(i,:));
end

edgecounter = 1;
newedges = [0 0];
newfaceref = [0 0];
for i = 1:size(edges,1),
    edge = edges(i,:);
    indexfound = [];
    if i ~= 1,
        indexrows = find(newedges(:,1) == edge(1));
        indexfound = newedges(newedges(indexrows,2) == edge(2));
        index = find(newedges(indexrows,2) == edge(2));
        index = indexrows(index);
        if length(index) == 0,
            indexrows = find(newedges(:,1) == edge(2));
            indexfound = newedges(newedges(indexrows,2) == edge(1));
            index = find(newedges(indexrows,2) == edge(1));
            index = indexrows(index);
        end
    end
    if length(indexfound) >= 1,
        newfaceref(index,2) = faceref(i);
        %         disp('FOUND!');
    else
        %         disp('NOT FOUND!');
        newedges(edgecounter,:) = edge;
        newfaceref(edgecounter,1) = faceref(i);
        edgecounter = edgecounter + 1;
    end
end

for i = 1:size(newedges,1),
    twofaces = newfaceref(i,:);
    edge = newedges(i,:);
    face1 = newfaces(twofaces(1),:);
    face2 = newfaces(twofaces(2),:);
    
    notedgevertex1 = setdiff(face1, edge);
    notedgevertex2 = setdiff(face2, edge);
    
    A1 = vertices(edge(1),:) - vertices(notedgevertex1,:);
    B1 = vertices(edge(2),:) - vertices(notedgevertex1,:);
    
    cot1 = abs(dot(A1,B1)/(1e-6 + norm(cross(A1,B1))));
    
    
    A2 = vertices(edge(1),:) - vertices(notedgevertex2,:);
    B2 = vertices(edge(2),:) - vertices(notedgevertex2,:);
    
    cot2 = abs(dot(A2,B2)/(1e-6 + norm(cross(A2,B2))));
    
    cotangles(i,1) = cot1;
    cotangles(i,2) = cot2;
    %
    %     normal1 = facenormals(twofaces(1),:);
    %     normal2 = facenormals(twofaces(2),:);
    %     edgeangle(i) = atand(norm(cross(normal1,normal2))/(dot(normal1,normal2)));
end

Mf = zeros(size(vertices,1),size(vertices,1));
Af = zeros(size(vertices,1),size(vertices,1));

for i = 1:size(vertices,1),
    edgeindex1 = find(newedges(:,1) == i);
    edgeindex2 = find(newedges(:,2) == i);
    edgeindex = [edgeindex1; edgeindex2];
    for j = 1:size(edgeindex,1),
        edge = newedges(edgeindex(j),:);
        %         if (edge(edge~=i) > i),
        angles = cotangles(edgeindex(j),:);
        Mf(i,i) = Mf(i,i) + sum(angles)/2;
        Mf(i,edge(edge~=i)) = -1*sum(angles)/2;
        Af(i,i) = Af(i,i) + sum(facearea(newfaceref(edgeindex(j),:)));
        %         end
    end
    Af(i,i) = Af(i,i)/4;
end

dim = 14;

tic
% Initialize GPS dimension
%     dim = 10;

% Get the eigenvalues and the eigenvectors of the Laplace-Beltrami operator
[VGPS, DGPS] = eigs(Mf, Af, dim+1, 'SM');

% After the computation, eigenvalues are arranged in decreasing order.
% However, they should be arranged in increasing order for the GPS
% computation. In addition, the lowest value should be disregarded because
% it is close to zero.
eigenvalues = diag(DGPS);
eigenvalues = eigenvalues(end-1:-1:1);

% The eigenvectors are also arranged in decreasing order. Hence, they
% should be re-arranged so that they correspond to the correct eigenvalues
eigenvectors = VGPS(:, end-1:-1:1);

mag = [];
clear randomcluster1;

% Compute for the eigenvector normalization values
for i = 1:size(eigenvectors,2),
    sqr = eigenvectors(:,i)'*Af*eigenvectors(:,i);
    mag(i) = sqrt(sqr);
end

% Normalize the eigenvectors
neigenvectors = eigenvectors./(repmat(mag, size(vertices,1), 1));

% Compute for the GPS values
GPSfinal = neigenvectors./(sqrt(repmat(eigenvalues',size(vertices,1),1)));

randomcluster = [];
maxIter = 30;
subvertex = [];

verticescopy = vertices;



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
