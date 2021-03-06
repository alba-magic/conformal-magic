addpath sc_map/

resolutioN = 200;


fileList = dir(strcat(dirBoundary,'*.mat'));

L = length(fileList);
%L = 1;

tic;
for indK = 1:L
    tStartK = toc;
    
    
    %load(strcat(dirCropped,name_str(1:end-4),'.mat'),'centerXY')
    name_str = fileList(indK).name(1:end-4);
    
    load(strcat(dirBoundary,fileList(indK).name),'bndrRefined')
    load(strcat(dirCropped,name_str,'.mat'),'centerXY')
    
    SegOut = imread(strcat(dirCropped,name_str,'_rotated.tif'));
    
    pC = polygon([bndrRefined]);
    
    tStart = toc;
    f = diskmap(pC);
    f = center(f,0);
    fi = inv(f);
    
    save(strcat(dirMap,name_str,'.mat'),'f','fi','name_str')
    
    tStop = toc;
    fprintf('%d sec to calculate a map itself\n',round(tStop-tStart))
    
    fig1 = figure(1);
    %plot(bndrRefined)
    hold on
    
    notTest_image
    
    close(fig1);
    close(fig2);
    clear('pC','f','fi','bndrRefined','name_str','centerXY')
    
    tStopK = toc;
    fprintf('\nk = %d. Done in %2d min and %2d sec \n\n\n',indK,...
        floor((tStopK - tStartK)/60),...
        round(tStopK - tStartK - 60*floor((tStopK - tStartK)/60)))
end
