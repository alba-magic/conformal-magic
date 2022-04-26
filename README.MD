There are continious updates to the software. 

New versions release once verion is stable. 

In case of questions please contact Vasyl Alba directly at  name . last_name ( at ) northwestern edu



* Workflow 0 has location of all source files.
* Workflow ilastic *01 segmentation* performs automatic cleanup of the files after Ilastik segmentation and autimatically placed into the corresponding folder
* Workflow ilastik *02 origin selection* one has to chose origin of the future map and two morphological points that are used for boundary. Once the cript is started, image of the wing will open and graphic selector will appear. Once selection is done, image will be closed automatically and new one will open. The process will continue until the last image
* Workflow ilastik *03 mask cropping* performs automatic boundary detection based on the cleaned layers from step 01 and based on landmarks from step 02
* Workflow ilastic *04 boundary to polynom* boundary is automatically convered to the polygon. This is technical step. it is needed fro conformal map computation.
* Workflow ilastic *05 compute conf map* conformal map is computed automatically for all images that are in the corresponding folder.
* Workflow ilastic *06 image mapping*  for every conformal map, image is automatically mapped.
* Workflow ilastic *07 image angle alignment* automatic alignment of the images on the disc.
* Workflow ilastic *08 entropy veins* Automatic entropy computattion for all ensembles.
* Workflow ilastik *09 centroids inbred* Automatic  centroid computatoin for all ensembles
