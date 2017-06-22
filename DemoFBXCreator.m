%newfaces = newfaces - 1;

fid = fopen(['Output/', d(4).name(1:end-4) '.fbx'], 'w+');
fprintf(fid, '; FBX 7.4.0 project file\n');
fprintf(fid, '; Copyright (C) 1997-2010 Autodesk Inc. and/or its licensors.\n');
fprintf(fid, '; All rights reserved.\n');
fprintf(fid, '; ----------------------------------------------------\n');
fprintf(fid, '\n');

fprintf(fid, 'FBXHeaderExtension:  {\n');
fprintf(fid, '\tFBXHeaderVersion: 1003\n');
fprintf(fid, '\tFBXVersion: 7400\n');
fprintf(fid, '\tCreationTimeStamp:  {\n');
fprintf(fid, '\t\tVersion: 1000\n');
fprintf(fid, '\t\tYear: 2016\n');
fprintf(fid, '\t\tMonth: 5\n');
fprintf(fid, '\t\tDay: 23\n');
fprintf(fid, '\t\tHour: 14\n');
fprintf(fid, '\t\tMinute: 45\n');
fprintf(fid, '\t\tSecond: 51\n');
fprintf(fid, '\t\tMillisecond: 205\n');
fprintf(fid, '\t}\n');
	
fprintf(fid, '\tCreator: "FBX SDK/FBX Plugins version 2014.0.1"\n');
fprintf(fid, '\tSceneInfo: "SceneInfo::GlobalInfo", "UserData" {\n');
fprintf(fid, '\t\tType: "UserData"\n');
fprintf(fid, '\t\tVersion: 100\n');
fprintf(fid, '\t\tMetaData:  {\n');
fprintf(fid, '\t\t\tVersion: 100\n');
fprintf(fid, '\t\t\tTitle: ""\n');
fprintf(fid, '\t\t\tSubject: ""\n');
fprintf(fid, '\t\t\tAuthor: ""\n');
fprintf(fid, '\t\t\tKeywords: ""\n');
fprintf(fid, '\t\t\tRevision: ""\n');
fprintf(fid, '\t\t\tComment: ""\n');
fprintf(fid, '\t\t}\n');
fprintf(fid, '\t\tProperties70:  {\n');
fprintf(fid, '\t\t\tP: "DocumentUrl", "KString", "Url", "", "C:/Users/Joel/Desktop/meshes/fbxexport/riggedmodel/model1_ASCII_noCharacterRef.fbx"\n');
fprintf(fid, '\t\t\tP: "SrcDocumentUrl", "KString", "Url", "", "C:/Users/Joel/Desktop/meshes/fbxexport/riggedmodel/model1_ASCII_noCharacterRef.fbx"\n');
fprintf(fid, '\t\t\tP: "Original", "Compound", "", ""\n');
fprintf(fid, '\t\t\tP: "Original|ApplicationVendor", "KString", "", "", "Autodesk"\n');
fprintf(fid, '\t\t\tP: "Original|ApplicationName", "KString", "", "", "Maya"\n');
fprintf(fid, '\t\t\tP: "Original|ApplicationVersion", "KString", "", "", "2014"\n');
fprintf(fid, '\t\t\tP: "Original|DateTime_GMT", "DateTime", "", "", "23/05/2016 06:45:51.200"\n');
fprintf(fid, '\t\t\tP: "Original|FileName", "KString", "", "", "C:/Users/Joel/Desktop/meshes/fbxexport/riggedmodel/model1_ASCII_noCharacterRef.fbx"\n');
fprintf(fid, '\t\t\tP: "LastSaved", "Compound", "", ""\n');
fprintf(fid, '\t\t\tP: "LastSaved|ApplicationVendor", "KString", "", "", "Autodesk"\n');
fprintf(fid, '\t\t\tP: "LastSaved|ApplicationName", "KString", "", "", "Maya"\n');
fprintf(fid, '\t\t\tP: "LastSaved|ApplicationVersion", "KString", "", "", "2014"\n');
fprintf(fid, '\t\t\tP: "LastSaved|DateTime_GMT", "DateTime", "", "", "23/05/2016 06:45:51.200"\n');
fprintf(fid, '\t\t}\n');
fprintf(fid, '\t}\n');
fprintf(fid, '}\n');

fprintf(fid, 'GlobalSettings:  {\n');
fprintf(fid, '\tVersion: 1000\n');			
fprintf(fid, '\tProperties70:  {\n');
fprintf(fid, '\t\tP: "UpAxis", "int", "Integer", "",1\n');
fprintf(fid, '\t\tP: "UpAxisSign", "int", "Integer", "",1\n');
fprintf(fid, '\t\tP: "FrontAxis", "int", "Integer", "",2\n');
fprintf(fid, '\t\tP: "FrontAxisSign", "int", "Integer", "",1\n');
fprintf(fid, '\t\tP: "CoordAxis", "int", "Integer", "",0\n');
fprintf(fid, '\t\tP: "CoordAxisSign", "int", "Integer", "",1\n');
fprintf(fid, '\t\tP: "OriginalUpAxis", "int", "Integer", "",1\n');
fprintf(fid, '\t\tP: "OriginalUpAxisSign", "int", "Integer", "",1\n');
fprintf(fid, '\t\tP: "UnitScaleFactor", "double", "Number", "",1\n');
fprintf(fid, '\t\tP: "OriginalUnitScaleFactor", "double", "Number", "",1\n');
fprintf(fid, '\t\tP: "AmbientColor", "ColorRGB", "Color", "",0,0,0\n');
fprintf(fid, '\t\tP: "DefaultCamera", "KString", "", "", "Producer Perspective"\n');
fprintf(fid, '\t\tP: "TimeMode", "enum", "", "",6\n');
fprintf(fid, '\t\tP: "TimeProtocol", "enum", "", "",2\n');
fprintf(fid, '\t\tP: "SnapOnFrameMode", "enum", "", "",0\n');
fprintf(fid, '\t\tP: "TimeSpanStart", "KTime", "Time", "",0\n');
fprintf(fid, '\t\tP: "TimeSpanStop", "KTime", "Time", "",153953860000\n');
fprintf(fid, '\t\tP: "CustomFrameRate", "double", "Number", "",-1\n');
fprintf(fid, '\t\tP: "TimeMarker", "Compound", "", ""\n');
fprintf(fid, '\t\tP: "CurrentTimeMarker", "int", "Integer", "",-1\n');
fprintf(fid, '\t}\n');
fprintf(fid, '}\n');

fprintf(fid, '\n');
fprintf(fid, '; Object definitions\n');
fprintf(fid, ';------------------------------------------------------------------\n');
fprintf(fid, '\n');
fprintf(fid, 'Definitions:  {\n');
fprintf(fid, '\tVersion: 100\n');
fprintf(fid, '\tCount: 62\n'); % EDIT THIS WITH THE CORRECT NUMBER OF COUNT 42 before adding pose
fprintf(fid, '\tObjectType: "GlobalSettings" {\n');
fprintf(fid, '\t\tCount: 1\n');
fprintf(fid, '\t}\n');
% fprintf(fid, '\tObjectType: "NodeAttribute" {\n');
% fprintf(fid, '\t\tCount: 17\n');
% fprintf(fid, '\t\tPropertyTemplate: "FbxSkeleton" {\n');
% fprintf(fid, '\t\t\tProperties70:  {\n');
% fprintf(fid, '\t\t\t\tP: "Color", "ColorRGB", "Color", "",0.8,0.8,0.8\n');
% fprintf(fid, '\t\t\t\tP: "Size", "double", "Number", "",100\n');
% fprintf(fid, '\t\t\t\tP: "LimbLength", "double", "Number", "H",1\n');
% fprintf(fid, '\t\t\t}\n');
% fprintf(fid, '\t\t}\n');
% fprintf(fid, '\t}\n');
	
fprintf(fid, '\tObjectType: "Material" {\n');
fprintf(fid, '\t\tCount: 1\n');
fprintf(fid, '\t\tPropertyTemplate: "FbxSurfaceLambert" {\n');
fprintf(fid, '\t\t\tProperties70:  {\n');
fprintf(fid, '\t\t\t\tP: "ShadingModel", "KString", "", "", "Lambert"\n');
fprintf(fid, '\t\t\t\tP: "MultiLayer", "bool", "", "",0\n');
fprintf(fid, '\t\t\t\tP: "EmissiveColor", "Color", "", "A",0,0,0\n');
fprintf(fid, '\t\t\t\tP: "EmissiveFactor", "Number", "", "A",1\n');
fprintf(fid, '\t\t\t\tP: "AmbientColor", "Color", "", "A",0.2,0.2,0.2\n');
fprintf(fid, '\t\t\t\tP: "AmbientFactor", "Number", "", "A",1\n');
fprintf(fid, '\t\t\t\tP: "DiffuseColor", "Color", "", "A",0.8,0.8,0.8\n');
fprintf(fid, '\t\t\t\tP: "DiffuseFactor", "Number", "", "A",1\n');
fprintf(fid, '\t\t\t\tP: "Bump", "Vector3D", "Vector", "",0,0,0\n');
fprintf(fid, '\t\t\t\tP: "NormalMap", "Vector3D", "Vector", "",0,0,0\n');
fprintf(fid, '\t\t\t\tP: "BumpFactor", "double", "Number", "",1\n');
fprintf(fid, '\t\t\t\tP: "TransparentColor", "Color", "", "A",0,0,0\n');
fprintf(fid, '\t\t\t\tP: "TransparencyFactor", "Number", "", "A",0\n');
fprintf(fid, '\t\t\t\tP: "DisplacementColor", "ColorRGB", "Color", "",0,0,0\n');
fprintf(fid, '\t\t\t\tP: "DisplacementFactor", "double", "Number", "",1\n');
fprintf(fid, '\t\t\t\tP: "VectorDisplacementColor", "ColorRGB", "Color", "",0,0,0\n');
fprintf(fid, '\t\t\t\tP: "VectorDisplacementFactor", "double", "Number", "",1\n');
fprintf(fid, '\t\t\t}\n');
fprintf(fid, '\t\t}\n');
fprintf(fid, '\t}\n');


fprintf(fid, '\tObjectType: "Model" {\n');
fprintf(fid, '\t\tCount: 20\n'); % CHANGE THIS
fprintf(fid, '\t\tPropertyTemplate: "FbxNode" {\n');
fprintf(fid, '\t\t\tProperties70:  {\n');
fprintf(fid, '\t\t\t\tP: "QuaternionInterpolate", "enum", "", "",0\n');
fprintf(fid, '\t\t\t\tP: "RotationOffset", "Vector3D", "Vector", "",0,0,0\n');
fprintf(fid, '\t\t\t\tP: "RotationPivot", "Vector3D", "Vector", "",0,0,0\n');
fprintf(fid, '\t\t\t\tP: "ScalingOffset", "Vector3D", "Vector", "",0,0,0\n');
fprintf(fid, '\t\t\t\tP: "ScalingPivot", "Vector3D", "Vector", "",0,0,0\n');
fprintf(fid, '\t\t\t\tP: "TranslationActive", "bool", "", "",0\n');
fprintf(fid, '\t\t\t\tP: "TranslationMin", "Vector3D", "Vector", "",0,0,0\n');
fprintf(fid, '\t\t\t\tP: "TranslationMax", "Vector3D", "Vector", "",0,0,0\n');
fprintf(fid, '\t\t\t\tP: "TranslationMinX", "bool", "", "",0\n');
fprintf(fid, '\t\t\t\tP: "TranslationMinY", "bool", "", "",0\n');
fprintf(fid, '\t\t\t\tP: "TranslationMinZ", "bool", "", "",0\n');
fprintf(fid, '\t\t\t\tP: "TranslationMaxX", "bool", "", "",0\n');
fprintf(fid, '\t\t\t\tP: "TranslationMaxY", "bool", "", "",0\n');
fprintf(fid, '\t\t\t\tP: "TranslationMaxZ", "bool", "", "",0\n');
fprintf(fid, '\t\t\t\tP: "RotationOrder", "enum", "", "",0\n');
fprintf(fid, '\t\t\t\tP: "RotationSpaceForLimitOnly", "bool", "", "",0\n');
fprintf(fid, '\t\t\t\tP: "RotationStiffnessX", "double", "Number", "",0\n');
fprintf(fid, '\t\t\t\tP: "RotationStiffnessY", "double", "Number", "",0\n');
fprintf(fid, '\t\t\t\tP: "RotationStiffnessZ", "double", "Number", "",0\n');
fprintf(fid, '\t\t\t\tP: "AxisLen", "double", "Number", "",10\n');
fprintf(fid, '\t\t\t\tP: "PreRotation", "Vector3D", "Vector", "",0,0,0\n');
fprintf(fid, '\t\t\t\tP: "PostRotation", "Vector3D", "Vector", "",0,0,0\n');
fprintf(fid, '\t\t\t\tP: "RotationActive", "bool", "", "",0\n');
fprintf(fid, '\t\t\t\tP: "RotationMin", "Vector3D", "Vector", "",0,0,0\n');
fprintf(fid, '\t\t\t\tP: "RotationMax", "Vector3D", "Vector", "",0,0,0\n');
fprintf(fid, '\t\t\t\tP: "RotationMinX", "bool", "", "",0\n');
fprintf(fid, '\t\t\t\tP: "RotationMinY", "bool", "", "",0\n');
fprintf(fid, '\t\t\t\tP: "RotationMinZ", "bool", "", "",0\n');
fprintf(fid, '\t\t\t\tP: "RotationMaxX", "bool", "", "",0\n');
fprintf(fid, '\t\t\t\tP: "RotationMaxY", "bool", "", "",0\n');
fprintf(fid, '\t\t\t\tP: "RotationMaxZ", "bool", "", "",0\n');
fprintf(fid, '\t\t\t\tP: "InheritType", "enum", "", "",0\n');
fprintf(fid, '\t\t\t\tP: "ScalingActive", "bool", "", "",0\n');
fprintf(fid, '\t\t\t\tP: "ScalingMin", "Vector3D", "Vector", "",0,0,0\n');
fprintf(fid, '\t\t\t\tP: "ScalingMax", "Vector3D", "Vector", "",1,1,1\n');
fprintf(fid, '\t\t\t\tP: "ScalingMinX", "bool", "", "",0\n');
fprintf(fid, '\t\t\t\tP: "ScalingMinY", "bool", "", "",0\n');
fprintf(fid, '\t\t\t\tP: "ScalingMinZ", "bool", "", "",0\n');
fprintf(fid, '\t\t\t\tP: "ScalingMaxX", "bool", "", "",0\n');
fprintf(fid, '\t\t\t\tP: "ScalingMaxY", "bool", "", "",0\n');
fprintf(fid, '\t\t\t\tP: "ScalingMaxZ", "bool", "", "",0\n');
fprintf(fid, '\t\t\t\tP: "GeometricTranslation", "Vector3D", "Vector", "",0,0,0\n');
fprintf(fid, '\t\t\t\tP: "GeometricRotation", "Vector3D", "Vector", "",0,0,0\n');
fprintf(fid, '\t\t\t\tP: "GeometricScaling", "Vector3D", "Vector", "",1,1,1\n');
fprintf(fid, '\t\t\t\tP: "MinDampRangeX", "double", "Number", "",0\n');
fprintf(fid, '\t\t\t\tP: "MinDampRangeY", "double", "Number", "",0\n');
fprintf(fid, '\t\t\t\tP: "MinDampRangeZ", "double", "Number", "",0\n');				
fprintf(fid, '\t\t\t\tP: "MaxDampRangeX", "double", "Number", "",0\n');
fprintf(fid, '\t\t\t\tP: "MaxDampRangeY", "double", "Number", "",0\n');
fprintf(fid, '\t\t\t\tP: "MaxDampRangeZ", "double", "Number", "",0\n');
fprintf(fid, '\t\t\t\tP: "MinDampStrengthX", "double", "Number", "",0\n');
fprintf(fid, '\t\t\t\tP: "MinDampStrengthY", "double", "Number", "",0\n');
fprintf(fid, '\t\t\t\tP: "MinDampStrengthZ", "double", "Number", "",0\n');
fprintf(fid, '\t\t\t\tP: "MaxDampStrengthX", "double", "Number", "",0\n');
fprintf(fid, '\t\t\t\tP: "MaxDampStrengthY", "double", "Number", "",0\n');
fprintf(fid, '\t\t\t\tP: "MaxDampStrengthZ", "double", "Number", "",0\n');
fprintf(fid, '\t\t\t\tP: "PreferedAngleX", "double", "Number", "",0\n');
fprintf(fid, '\t\t\t\tP: "PreferedAngleY", "double", "Number", "",0\n');
fprintf(fid, '\t\t\t\tP: "PreferedAngleZ", "double", "Number", "",0\n');
fprintf(fid, '\t\t\t\tP: "LookAtProperty", "object", "", ""\n');
fprintf(fid, '\t\t\t\tP: "UpVectorProperty", "object", "", ""\n');
fprintf(fid, '\t\t\t\tP: "Show", "bool", "", "",1\n');
fprintf(fid, '\t\t\t\tP: "NegativePercentShapeSupport", "bool", "", "",1\n');
fprintf(fid, '\t\t\t\tP: "DefaultAttributeIndex", "int", "Integer", "",-1\n');
fprintf(fid, '\t\t\t\tP: "Freeze", "bool", "", "",0\n');
fprintf(fid, '\t\t\t\tP: "LODBox", "bool", "", "",0\n');
fprintf(fid, '\t\t\t\tP: "Lcl Translation", "Lcl Translation", "", "A",0,0,0\n');
fprintf(fid, '\t\t\t\tP: "Lcl Rotation", "Lcl Rotation", "", "A",0,0,0\n');
fprintf(fid, '\t\t\t\tP: "Lcl Scaling", "Lcl Scaling", "", "A",1,1,1\n');
fprintf(fid, '\t\t\t\tP: "Visibility", "Visibility", "", "A",1\n');
fprintf(fid, '\t\t\t\tP: "Visibility Inheritance", "Visibility Inheritance", "", "",1\n');
fprintf(fid, '\t\t\t}\n');
fprintf(fid, '\t\t}\n');
fprintf(fid, '\t}\n');


fprintf(fid, '\tObjectType: "Geometry" {\n');
fprintf(fid, '\t\tCount: 1\n');
fprintf(fid, '\t\tPropertyTemplate: "FbxMesh" {\n');
fprintf(fid, '\t\t\tProperties70:  {\n');
fprintf(fid, '\t\t\t\tP: "Color", "ColorRGB", "Color", "",0.8,0.8,0.8\n');
fprintf(fid, '\t\t\t\tP: "BBoxMin", "Vector3D", "Vector", "",0,0,0\n');
fprintf(fid, '\t\t\t\tP: "BBoxMax", "Vector3D", "Vector", "",0,0,0\n');
fprintf(fid, '\t\t\t\tP: "Primary Visibility", "bool", "", "",1\n');
fprintf(fid, '\t\t\t\tP: "Casts Shadows", "bool", "", "",1\n');
fprintf(fid, '\t\t\t\tP: "Receive Shadows", "bool", "", "",1\n');
fprintf(fid, '\t\t\t}\n');
fprintf(fid, '\t\t}\n');
fprintf(fid, '\t}\n');

fprintf(fid, '\tObjectType: "NodeAttribute" {\n');
fprintf(fid, '\t\tCount: 19\n');
fprintf(fid, '\t\tPropertyTemplate: "FbxNull" {\n');
fprintf(fid, '\t\t\tProperties70:  {\n');
fprintf(fid, '\t\t\t\tP: "Color", "ColorRGB", "Color", "",0.8,0.8,0.8\n');
fprintf(fid, '\t\t\t\tP: "Size", "double", "Number", "",100\n');
fprintf(fid, '\t\t\t\tP: "Look", "enum", "", "",1\n');
fprintf(fid, '\t\t\t}\n');
fprintf(fid, '\t\t}\n');
fprintf(fid, '\t}\n');

fprintf(fid, '\tObjectType: "Pose" {\n');
fprintf(fid, '\t\tCount:1\n');
fprintf(fid, '\t}\n');

fprintf(fid, '\tObjectType: "Deformer" {\n');
fprintf(fid, '\t\tCount:19\n');
fprintf(fid, '\t}\n');
fprintf(fid, '}\n');

fprintf(fid, '\n');

fprintf(fid, '; Object properties\n');
fprintf(fid, ';------------------------------------------------------------------\n');
fprintf(fid, '\n');
fprintf(fid, 'Objects:  {\n');

fprintf(fid, '\tGeometry: 132646224, "Geometry::", "Mesh" {\n');
fprintf(fid, '\t\tVertices: *');
vertexcount = size(vertices,1)*size(vertices,2);
fprintf(fid, num2str(vertexcount));
fprintf(fid, ' {\n');
fprintf(fid, '\t\t\ta:\n');

for i=1:size(vertices,1),
   fprintf(fid, num2str(vertices(i,1)));
   fprintf(fid, ',');
   fprintf(fid, num2str(vertices(i,2)));
   fprintf(fid, ',');
   fprintf(fid, num2str(vertices(i,3)));
   if i~=size(vertices,1),
    fprintf(fid, ',');
   end
end

fprintf(fid, '\n');
fprintf(fid, '\t\t}\n');
fprintf(fid, '\t\tPolygonVertexIndex: *');
fprintf(fid, num2str(size(newfaces,1)*3));
fprintf(fid, ' {\n');
fprintf(fid, '\t\t\ta:\n');

%trfaces = faces - ones(size(faces,1), 3);

for i=1:size(newfaces,1),
   fprintf(fid, num2str(newfaces(i,1) - 1));
   fprintf(fid, ',');
   fprintf(fid, num2str(newfaces(i,2) - 1));
   fprintf(fid, ',');
   negindex = (newfaces(i,3) - 1 + 1)*-1;
   fprintf(fid, num2str(negindex));
   if i~=size(newfaces,1),
       fprintf(fid, ',');
   end
end

fprintf(fid, '\n');
fprintf(fid, '\t\t}\n');

fprintf(fid, '\t\tGeometryVersion: 124\n');
fprintf(fid, '\t\tLayerElementNormal: 0 {\n');
fprintf(fid, '\t\t\tVersion: 102\n');
fprintf(fid, '\t\t\tName: ""\n');
fprintf(fid, '\t\t\tMappingInformationType: "ByPolygonVertex"\n');
fprintf(fid, '\t\t\tReferenceInformationType: "Direct"\n');
fprintf(fid, '\t\t\tNormals: *');
fprintf(fid, num2str(vertexcount*3));
fprintf(fid, ' {\n');
fprintf(fid, '\n\ta: ');
% 
% tempfacesv1 = str_faces.v1 + ones(length(str_faces.v1),1);
% tempfacesv2 = str_faces.v2 + ones(length(str_faces.v2),1);
% tempfacesv3 = str_faces.v3 + ones(length(str_faces.v3),1);

tempfacesv1 = newfaces(:,1);
tempfacesv2 = newfaces(:,2);
tempfacesv3 = newfaces(:,3);

for i=1:length(tempfacesv1),
    fprintf(fid, num2str(vertices(tempfacesv1(i),1)));
    fprintf(fid, ',');
    fprintf(fid, num2str(vertices(tempfacesv1(i),2)));
    fprintf(fid, ',');
    fprintf(fid, num2str(vertices(tempfacesv1(i),3)));
    fprintf(fid, ',');
    fprintf(fid, num2str(vertices(tempfacesv2(i),1)));
    fprintf(fid, ',');
    fprintf(fid, num2str(vertices(tempfacesv2(i),2)));
    fprintf(fid, ',');
    fprintf(fid, num2str(vertices(tempfacesv2(i),3)));
    fprintf(fid, ',');
    fprintf(fid, num2str(vertices(tempfacesv3(i),1)));
    fprintf(fid, ',');
    fprintf(fid, num2str(vertices(tempfacesv3(i),2)));
    fprintf(fid, ',');
    fprintf(fid, num2str(vertices(tempfacesv3(i),3)));
    if i~=length(tempfacesv1),
        fprintf(fid, ',');
    end
end

fprintf(fid, '\n');
fprintf(fid, '\t\t\t}\n');

fprintf(fid, '\t\t\tNormalsW: *');
fprintf(fid, num2str(vertexcount));
fprintf(fid, ' {\n');
fprintf(fid, '\t\t\t\ta:\n');

for i=1:vertexcount,
   fprintf(fid, '1');
   if i~=vertexcount,
      fprintf(fid, ','); 
   end
end

fprintf(fid, '\n');
fprintf(fid, '\t\t\t}\n');
fprintf(fid, '\t\t}\n');

fprintf(fid, '\t\tLayerElementSmoothing: 0 {\n');
fprintf(fid, '\t\t\tVersion: 102\n');
fprintf(fid, '\t\t\tName: ""\n');
fprintf(fid, '\t\t\tMappingInformationType: "ByPolygon"\n');
fprintf(fid, '\t\t\tReferenceInformationType: "Direct"\n');
fprintf(fid, '\t\t\tSmoothing: *');
fprintf(fid, num2str(vertexcount/3));
fprintf(fid, ' {\n');
fprintf(fid, '\t\t\t\ta:\n');

for i=1:vertexcount/3,
   fprintf(fid, '0');
   
   if i~=vertexcount/3,
       fprintf(fid, ',');
   end
   
end

fprintf(fid, '\n');
fprintf(fid, '\t\t\t}\n');
fprintf(fid, '\t\t}\n');

%LayerElementMaterial: 

fprintf(fid, '\t\tLayerElementMaterial: 0 {\n');
fprintf(fid, '\t\t\tVersion: 101\n');
fprintf(fid, '\t\t\tName: ""\n');
fprintf(fid, '\t\t\tMappingInformationType: "AllSame"\n');
fprintf(fid, '\t\t\tReferenceInformationType: "IndexToDirect"\n');
fprintf(fid, '\t\t\tMaterials: *1 {\n');
fprintf(fid, '\t\t\t\ta: 0\n');
fprintf(fid, '\t\t\t}\n');
fprintf(fid, '\t\t}\n');
fprintf(fid, '\t\tLayer: 0 {\n');
fprintf(fid, '\t\t\tVersion: 100\n');
fprintf(fid, '\t\t\tLayerElement:  {\n');
fprintf(fid, '\t\t\t\tType: "LayerElementNormal"\n');
fprintf(fid, '\t\t\t\tTypedIndex: 0\n');
fprintf(fid, '\t\t\t}\n');
fprintf(fid, '\t\t\tLayerElement:  {\n');
fprintf(fid, '\t\t\t\tType: "LayerElementMaterial"\n');
fprintf(fid, '\t\t\t\tTypedIndex: 0\n');
fprintf(fid, '\t\t\t}\n');
fprintf(fid, '\t\t\tLayerElement:  {\n');
fprintf(fid, '\t\t\t\tType: "LayerElementSmoothing"\n');
fprintf(fid, '\t\t\t\tTypedIndex: 0\n');
fprintf(fid, '\t\t\t}\n');
fprintf(fid, '\t\t}\n');
fprintf(fid, '\t}\n');

nodeattributenum = char('926817696', '44589872', '44595152', '44590576', '44595504', '44593040', '44594800', '44592688', '44593744', '44592336', '44591280', '44590928', '44594448', '44590224', '44595856', '44596560', '35740352','35735072', '35735702');

for i = 1:19,
   fprintf(fid, '\tNodeAttribute: ');
   fprintf(fid, nodeattributenum(i,:));
   fprintf(fid, ', "NodeAttribute::", ');
   if i == 1,
      fprintf(fid, '"Null" {\n'); 
      fprintf(fid, '\t\tTypeFlags: "Null"\n');
   else
      fprintf(fid, '"LimbNode" {\n');
      fprintf(fid, '\t\tProperties70:  {\n');
      fprintf(fid, '\t\t\tP: "Size", "double", "Number", "",0.470442016056283\n');
      fprintf(fid, '\t\t}\n');
      fprintf(fid, '\t\tTypeFlags: "Skeleton"\n');
   end
   fprintf(fid, '\t}\n');
end

modelnum = char('55087328', '55089776', '55092224', '55106912', '55079984', '55119152', '55121600', '55124048', '55126496', '55128944', '55131392', '55109360', '55133840', '55136288', '55138736', '55114256', '55111808', '55141184', '55143632', '55146332');
modelname = char('"Model::Model1_Mesh"', '"Model::Character1_Reference"', '"Model::Character1_Hips"', '"Model::Character1_LeftUpLeg"', '"Model::Character1_LeftLeg"', '"Model::Character1_LeftFoot"', '"Model::Character1_RightUpLeg"','"Model::Character1_RightLeg"', '"Model::Character1_RightFoot"', '"Model::Character1_Spine"', '"Model::Character1_Spine1"', '"Model::Character1_Spine2"', '"Model::Character1_LeftArm"', '"Model::Character1_LeftForeArm"', '"Model::Character1_LeftHand"', '"Model::Character1_RightArm"', '"Model::Character1_RightForeArm"', '"Model::Character1_RightHand"', '"Model::Character1_Neck"', '"Model::Character1_Head"');


for i = 1:size(modelnum,1),
    fprintf(fid, '\tModel: ');
    fprintf(fid, strtrim(modelnum(i,:)));
    fprintf(fid, ', ');
    fprintf(fid, strtrim(modelname(i,:)));
    fprintf(fid, ', ');
    if i==1,
        fprintf(fid, '"Mesh" {\n');
    elseif i==2,
        fprintf(fid, '"Null" {\n');
    else
        fprintf(fid, '"LimbNode" {\n');
    end
    fprintf(fid, '\t\tVersion: 232\n');
    fprintf(fid, '\t\tProperties70:  {\n');
    
    if i == 1,
        fprintf(fid, '\t\t\tP: "RotationPivot", "Vector3D", "Vector", "",0,0.43774816249916,0\n');
        fprintf(fid, '\t\t\tP: "ScalingPivot", "Vector3D", "Vector", "",0,0.43774816249916,0\n');
    end
    
    fprintf(fid, '\t\t\tP: "RotationActive", "bool", "", "",1\n');
    fprintf(fid, '\t\t\tP: "InheritType", "enum", "", "",1\n');
    fprintf(fid, '\t\t\tP: "ScalingMax", "Vector3D", "Vector", "",0,0,0\n');
    fprintf(fid, '\t\t\tP: "DefaultAttributeIndex", "int", "Integer", "",0\n');
    
    if i == 1,
        fprintf(fid, '\t\t\tP: "Lcl Translation", "Lcl Translation", "", "AL7",0,0,0\n');
        fprintf(fid, '\t\t\tP: "Lcl Rotation", "Lcl Rotation", "", "AL7",0,0,0\n');
        fprintf(fid, '\t\t\tP: "Lcl Scaling", "Lcl Scaling", "", "AL7",1,1,1\n');
    end
    
    if i>=3,
        fprintf(fid, '\t\t\tP: "Lcl Translation", "Lcl Translation", "", "A",');
        fprintf(fid, num2str(finaljoints(i,1)));
        fprintf(fid, ',');
        fprintf(fid, num2str(finaljoints(i,2)));
        fprintf(fid, ',');
        fprintf(fid, num2str(finaljoints(i,3)));
        fprintf(fid, '\n');
        fprintf(fid, '\t\t\tP: "lockInfluenceWeights", "Bool", "", "A+U",0\n');
    end
    fprintf(fid, '\t\t}\n');
    fprintf(fid, '\t\tShading: T\n');
    fprintf(fid, '\t\tCulling: "CullingOff"\n');
    fprintf(fid, '\t}\n');
end

% POSE

fprintf(fid, '\tPose: 926826432, "Pose::skinCluster1", "BindPose" {\n');
fprintf(fid, '\t\tType: "BindPose"\n');
fprintf(fid, '\t\tVersion: 100\n');
fprintf(fid, '\t\tNbPoseNodes: 20\n');

% Head
randomcluster = reshape(jointlocation, [1 3 18]);
for i = 1:20,
    fprintf(fid, '\t\tPoseNode: {\n');
    fprintf(fid, '\t\t\tNode: ');
    fprintf(fid, modelnum(i,:));
    fprintf(fid, '\n');
    fprintf(fid, '\t\t\tMatrix *16 {\n');
    fprintf(fid, '\t\t\t\ta: 1,0,0,0,0,1,0,0,0,0,1,0,');
    switch(i),
        case 1,
            gx = '0';
            gy = '0';
            gz = '0';
        case 2,
            gx = '0';
            gy = '0';
            gz = '0';
        case 3,
            gx = realhip(1);
            gy = realhip(2);
            gz = realhip(3);
        case 4,
            gx = randomcluster(:,1,6);
            gy = randomcluster(:,2,6);
            gz = randomcluster(:,3,6);
        case 5,
            gx = randomcluster(:,1,4);
            gy = randomcluster(:,2,4);
            gz = randomcluster(:,3,4);
        case 6,
            gx = randomcluster(:,1,2);
            gy = randomcluster(:,2,2);
            gz = randomcluster(:,3,2);
        case 7,
            gx = randomcluster(:,1,7);
            gy = randomcluster(:,2,7);
            gz = randomcluster(:,3,7);
        case 8,
            gx = randomcluster(:,1,5);
            gy = randomcluster(:,2,5);
            gz = randomcluster(:,3,5);
        case 9,
            gx = randomcluster(:,1,3);
            gy = randomcluster(:,2,3);
            gz = randomcluster(:,3,3);
        case 10,
            gx = dividex(3);
            gy = dividey(3);
            gz = dividez(3);
        case 11,
            gx = dividex(2);
            gy = dividey(2);
            gz = dividez(2);
        case 12,
            gx = spine2(1);
            gy = spine2(2);
            gz = spine2(3);
        case 13,
            gx = randomcluster(:,1,8);
            gy = randomcluster(:,2,8);
            gz = randomcluster(:,3,8);
        case 14,
            gx = randomcluster(:,1,10);
            gy = randomcluster(:,2,10);
            gz = randomcluster(:,3,10);
        case 15,
            gx = randomcluster(:,1,12);
            gy = randomcluster(:,2,12);
            gz = randomcluster(:,3,12);
        case 16,
            gx = randomcluster(:,1,9);
            gy = randomcluster(:,2,9);
            gz = randomcluster(:,3,9);
        case 17,
            gx = randomcluster(:,1,11);
            gy = randomcluster(:,2,11);
            gz = randomcluster(:,3,11);
        case 18,
            gx = randomcluster(:,1,13);
            gy = randomcluster(:,2,13);
            gz = randomcluster(:,3,13);
        case 19,
            gx = neck(1);
            gy = neck(2);
            gz = neck(3);
        case 20,
            gx = randomcluster(:,1,1);
            gy = randomcluster(:,2,1);
            gz = randomcluster(:,3,1);
    end
    fprintf(fid, num2str(gx));
    fprintf(fid, ',');
    fprintf(fid, num2str(gy));
    fprintf(fid, ',');
    fprintf(fid, num2str(gz));
    fprintf(fid, ',');
    fprintf(fid, '1\n');
    fprintf(fid, '\t\t\t}\n');
    fprintf(fid, '\t\t}\n');
end

fprintf(fid, '\t}\n');
% fprintf(fid, '\tModel: 55087328, "Model::Model1_Mesh", "Mesh" {');
			


fprintf(fid, '\tMaterial: 38124912, "Material::lambert1", "" {');
fprintf(fid, '\t\tVersion: 102\n');
fprintf(fid, '\t\tShadingModel: "lambert"\n');
fprintf(fid, '\t\tMultiLayer: 0\n');
fprintf(fid, '\t\tProperties70:  {\n');
fprintf(fid, '\t\t\tP: "AmbientColor", "Color", "", "A",0,0,0\n');
fprintf(fid, '\t\t\tP: "DiffuseColor", "Color", "", "A",0.5,0.5,0.5\n');
fprintf(fid, '\t\t\tP: "DiffuseFactor", "Number", "", "A",0.800000011920929\n');
fprintf(fid, '\t\t\tP: "TransparencyFactor", "Number", "", "A",1\n');
fprintf(fid, '\t\t\tP: "Emissive", "Vector3D", "Vector", "",0,0,0\n');
fprintf(fid, '\t\t\tP: "Ambient", "Vector3D", "Vector", "",0,0,0\n');
fprintf(fid, '\t\t\tP: "Diffuse", "Vector3D", "Vector", "",0.400000005960464,0.400000005960464,0.400000005960464\n');
fprintf(fid, '\t\t\tP: "Opacity", "double", "Number", "",1\n');
fprintf(fid, '\t\t}\n');
fprintf(fid, '\t}\n');

fprintf(fid, '}\n');
		
fprintf(fid, '\n');
fprintf(fid, '; Object connections\n');
fprintf(fid, ';------------------------------------------------------------------\n');
fprintf(fid, '\n');
fprintf(fid, 'Connections:  {\n');

fprintf(fid, '\t;Model::Model1_Mesh, Model::RootNode\n');
fprintf(fid, '\tC: "OO",55087328,0\n');
	
fprintf(fid, '\n');

fprintf(fid, '\t;Model::Character1_Reference, Model::RootNode\n');
fprintf(fid, '\tC: "OO",55089776,0\n');
	
fprintf(fid, '\n');

fprintf(fid, '\t;Material::lambert1, Model::Model1_Mesh\n');
fprintf(fid, '\tC: "OO",38124912,55087328\n');

fprintf(fid, '\n');

fprintf(fid, '\t;Geometry::, Model::Model1_Mesh\n');
fprintf(fid, '\tC: "OO",132646224,55087328\n');

fprintf(fid, '\n');

fprintf(fid, '\t;NodeAttribute::, Model::Character1_Reference\n');
fprintf(fid, '\tC: "OO",926817696,55089776\n');
	
fprintf(fid, '\n');

fprintf(fid, '\t;Model::Character1_Hips, Model::Character1_Reference\n');
fprintf(fid, '\tC: "OO",55092224,55089776\n');

fprintf(fid, '\n');

fprintf(fid, '\t;NodeAttribute::, Model::Character1_Hips\n');
fprintf(fid, '\tC: "OO",44589872,55092224\n');

fprintf(fid, '\n');

fprintf(fid, '\t;Model::Character1_LeftUpLeg, Model::Character1_Hips\n');
fprintf(fid, '\tC: "OO",55106912,55092224\n');

fprintf(fid, '\n');

fprintf(fid, '\t;Model::Character1_RightUpLeg, Model::Character1_Hips\n');
fprintf(fid, '\tC: "OO",55121600,55092224\n');

fprintf(fid, '\n');

fprintf(fid, '\t;Model::Character1_Spine, Model::Character1_Hips\n');
fprintf(fid, '\tC: "OO",55128944,55092224\n');

fprintf(fid, '\n');
		
fprintf(fid, '\t;NodeAttribute::, Model::Character1_LeftUpLeg\n');
fprintf(fid, '\tC: "OO",44595152,55106912\n');

fprintf(fid, '\n');

fprintf(fid, '\t;Model::Character1_LeftLeg, Model::Character1_LeftUpLeg\n');
fprintf(fid, '\tC: "OO",55079984,55106912\n');

fprintf(fid, '\n');

fprintf(fid, '\t;NodeAttribute::, Model::Character1_LeftLeg\n');
fprintf(fid, '\tC: "OO",44590576,55079984\n');

fprintf(fid, '\n');

fprintf(fid, '\t;Model::Character1_LeftFoot, Model::Character1_LeftLeg\n');
fprintf(fid, '\tC: "OO",55119152,55079984\n');

fprintf(fid, '\n');

fprintf(fid, '\t;NodeAttribute::, Model::Character1_LeftFoot\n');
fprintf(fid, '\tC: "OO",44595504,55119152\n');

fprintf(fid, '\n');
	
fprintf(fid, '\t;NodeAttribute::, Model::Character1_RightUpLeg\n');
fprintf(fid, '\tC: "OO",44593040,55121600\n');
	
fprintf(fid, '\n');
	
fprintf(fid, '\t;Model::Character1_RightLeg, Model::Character1_RightUpLeg\n');
fprintf(fid, '\tC: "OO",55124048,55121600\n');

fprintf(fid, '\n');
	
fprintf(fid, '\t;NodeAttribute::, Model::Character1_RightLeg\n');
fprintf(fid, '\tC: "OO",44594800,55124048\n');

fprintf(fid, '\n');
	
fprintf(fid, '\t;Model::Character1_RightFoot, Model::Character1_RightLeg\n');
fprintf(fid, '\tC: "OO",55126496,55124048\n');

fprintf(fid, '\n');
	
fprintf(fid, '\t;NodeAttribute::, Model::Character1_RightFoot\n');
fprintf(fid, '\tC: "OO",44592688,55126496\n');

fprintf(fid, '\n');

fprintf(fid, '\t;NodeAttribute::, Model::Character1_Spine\n');
fprintf(fid, '\tC: "OO",44593744,55128944\n');
fprintf(fid, '\n');
	
fprintf(fid, '\t;Model::Character1_Spine1, Model::Character1_Spine\n');
fprintf(fid, '\tC: "OO",55131392,55128944\n');

fprintf(fid, '\n');
		
fprintf(fid, '\t;NodeAttribute::, Model::Character1_Spine1\n');
fprintf(fid, '\tC: "OO",44592336,55131392\n');

fprintf(fid, '\n');
	
fprintf(fid, '\t;Model::Character1_Spine2, Model::Character1_Spine1\n');
fprintf(fid, '\tC: "OO",55109360,55131392\n');

fprintf(fid, '\n');
			
fprintf(fid, '\t;NodeAttribute::, Model::Character1_Spine2\n');
fprintf(fid, '\tC: "OO",44591280,55109360\n');

fprintf(fid, '\n');
	
fprintf(fid, '\t;Model::Character1_LeftArm, Model::Character1_Spine2\n');
fprintf(fid, '\tC: "OO",55133840,55109360\n');
	
fprintf(fid, '\n');
	
fprintf(fid, '\t;Model::Character1_RightArm, Model::Character1_Spine2\n');
fprintf(fid, '\tC: "OO",55114256,55109360\n');

fprintf(fid, '\n');
		
fprintf(fid, '\t;Model::Character1_Neck, Model::Character1_Spine2\n');
fprintf(fid, '\tC: "OO",55143632,55109360\n');

fprintf(fid, '\n');
	
fprintf(fid, '\t;NodeAttribute::, Model::Character1_LeftArm\n');
fprintf(fid, '\tC: "OO",44590928,55133840\n');
fprintf(fid, '\n');
	
fprintf(fid, '\t;Model::Character1_LeftForeArm, Model::Character1_LeftArm\n');
fprintf(fid, '\tC: "OO",55136288,55133840\n');
fprintf(fid, '\n');
	
fprintf(fid, '\t;NodeAttribute::, Model::Character1_LeftForeArm\n');
fprintf(fid, '\tC: "OO",44594448,55136288\n');
fprintf(fid, '\n');
	
fprintf(fid, '\t;Model::Character1_LeftHand, Model::Character1_LeftForeArm\n');
fprintf(fid, '\tC: "OO",55138736,55136288\n');

fprintf(fid, '\n');

fprintf(fid, '\t;NodeAttribute::, Model::Character1_LeftHand\n');
fprintf(fid , '\tC: "OO",44590224,55138736\n');
	
fprintf(fid, '\n');

fprintf(fid, '\t;NodeAttribute::, Model::Character1_RightArm\n');
fprintf(fid, '\tC: "OO",44595856,55114256\n');	
	
fprintf(fid, '\n');

fprintf(fid, '\t;Model::Character1_RightForeArm, Model::Character1_RightArm\n');
fprintf(fid, '\tC: "OO",55111808,55114256\n');
fprintf(fid, '\n');

fprintf(fid, '\t;NodeAttribute::, Model::Character1_RightForeArm\n');
fprintf(fid, '\tC: "OO",44596560,55111808\n');

fprintf(fid, '\t;Model::Character1_RightHand, Model::Character1_RightForeArm\n');
fprintf(fid, '\tC: "OO",55141184,55111808\n\n');

fprintf(fid, '\t;NodeAttribute::, Model::Character1_RightHand\n');
fprintf(fid, '\tC: "OO",35740352,55141184\n\n');

fprintf(fid, '\t;NodeAttribute::, Model::Character1_Neck\n');
fprintf(fid, '\tC: "OO",35735072,55143632\n\n');
	
fprintf(fid, '\t;NodeAttribute::, Model::Character1_Head\n');
fprintf(fid, '\tC: "OO",35735702,55146332\n\n');
	
fprintf(fid, '\t;Model::Character1_Head, Model::Character1_Neck\n');
fprintf(fid, '\tC: "OO",55146332,55143632\n\n');

fclose(fid);

% SUBDEFORMER

% fprintf(fid, '\t;Deformer::, Geometry::\n');
% fprintf(fid, '\tC: "OO",57590096,132646224\n');
% fprintf(fid, '\n');
% 
% for i=2:size(deformernumber,1),
%     fprintf(fid, '\t;SubDeformer::, Deformer::\n');
%     fprintf(fid, '\tC: "OO",');
%     fprintf(fid, num2str(deformernumber(i,:)));
%     fprintf(fid, ',57590096\n');
%     fprintf(fid, '\n');
% end
% 
% for i=3:size(modelname,1),
%    fprintf(fid, '\t;');
%    fprintf(fid, strtrim(regexprep(modelname(i,:), '"', '')));
%    fprintf(fid, ', SubDeformer::\n');
%    fprintf(fid, '\tC: "OO",');
%    fprintf(fid, modelnum(i,:));
%    fprintf(fid, ',');
%    fprintf(fid, deformernumber(i-1,:));
%    fprintf(fid, '\n');
%    fprintf(fid, '\n');
% end
