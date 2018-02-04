# KrazyRoads
Another Cross the Road Game using SceneKit and MagicaVoxel - 
commit1 - Started from boilerplate code. Cleaned the GameViewController and added the following methods, setupScene(), setupFloor() and 
setupCamera(). -
commit2 - Added darkgrass.png to art.scnassets and them added this to the setupFloor() method. To make the grass to appear realistic, I added wrapS and wrapT to .repeat and also SCNMatrixMakeScale to 12.5 for all axis. -
commit3 - Added new cocoa file called LaneNode, added enum for different roads, switch statement to select lanes and ground images for 
each type of lane, new method to add the lanes. Added an for loop in the GVC for the selection of lanes. - 
commit4 - New swift file added for utils and helper methods for the layout of the different lanes. A helper random method was created
to ensured different lanes could be produced. - 
commit5 - Added two lights into the scene. An ambient and directional light. Both lights were put in the same position as the camera.
Also the directional light I added castsShadow and shadowColor. - 
commit6 - Player Node added and method to place the player in the scene. The player is a chicken made in MagicaVoxel.

