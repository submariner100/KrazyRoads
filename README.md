# KrazyRoads
Another Cross the Road Game using SceneKit and MagicaVoxel - 
commit1 - Started from boilerplate code. Cleaned the GameViewController and added the following methods, setupScene(), setupFloor() and 
setupCamera(). -
commit2 - Added darkgrass.png to art.scnassets and them added this to the setupFloor() method. To make the grass to appear realistic, I added wrapS and wrapT to .repeat and also SCNMatrixMakeScale to 12.5 for all axis. -
commit3 - Added new cocoa file called LaneNode, added enum for different roads, switch statement to select lanes and ground images for 
each type of lane, new method to add the lanes. Added an for loop in the GVC for the selection of lanes. 
