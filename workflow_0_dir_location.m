addpath linecurvature_version1b/
addpath sc_map/

N = 50;
resolutioN = 200;

isHawaiian = 0;
isMutant = 0;
isDiet = 1;

if isHawaiian
    
    dirLocation = ...
        '/Volumes/mani_group/datasets/Edwards-Hawaiian Drosophila wings-complete set/';
    dirSource  = strcat(dirLocation,'img_01_source/');
    dirSourceRotated  = strcat(dirLocation,'img_05_source_rotated/');
    
elseif isMutant
    
    %there are 5 mutants egfr, mam, samw, star, tkv
    
    %dirLocation = strcat('/Volumes/mani_group/datasets/data_mutants/',...
    %    'Microscope_1/40X_magnification_Olympus/');
    
    dirLocation = strcat('/Volumes/mani_group/datasets/data_mutants/',...
        'Microscope_2/40X_magnification_Leica/');
    
    dirSource  = strcat(dirLocation,'img_01_originals/');
    dirSourceRotated  = strcat(dirLocation,'img_05_originals_rotated/');
elseif isDiet
    
    dirLocation = '/Volumes/mani_group/datasets/jamie_temp_diet/';
    dirSource = dirLocation;
    dirSourceRotated  = strcat(dirLocation,'img_05_originals_rotated/');
end


dirLayer = strcat(dirLocation,'img_01_layers/');
dirMask = strcat(dirLocation,'img_02_mask/');
dirMaskCropped = strcat(dirLocation,'img_03_mask_cropped/');
dirBoundary = strcat(dirLocation,'img_04_boundary/');
%dirCropped = strcat(dirLocation,'img_cropped/');
dirMap = strcat(dirLocation,'img_06_map/');

dirImage = sprintf('%simg_07_mapped/%d/',dirLocation,resolutioN);

dirAngularAligned = sprintf('%simg_08_angular_aligned/%d/',...
    dirLocation,resolutioN);

dirInitiallyAligned = sprintf('%simg_09_initially_aligned/%d/',...
    dirLocation,resolutioN);

dirVeinNormal = sprintf('%simg_10_masks_veins_normalized/',...
    dirLocation);

dirVeinMapped = sprintf('%simg_11_veins_mapped/%d/',...
    dirLocation,resolutioN);

dirVeinAligned = sprintf('%simg_12_veins_aligned/%d/',...
    dirLocation,resolutioN);

dirPCA = sprintf('%simg_13_pca_wings/',dirLocation);

%dirAligned = sprintf('%simg_aligned/%d/',dirLocation,resolutioN);

isLazy = 0;

badItems = [2,13,18,22,24];
tic;