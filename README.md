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
commit6 - Player Node added and method to place the player in the scene. The player is a chicken made in MagicaVoxel. - 
commit7 - Added SCNActions and UISwipeGesturesRecognizers for the player to move around the scene forward, right and left with a few
easting out/ins. A method was added so the user could swipe on his screen and the player would carry out correct actions. Also
added an extension in GVC to handle the swipes. An switch statement was put there to recognize what the user swipes. - 
commit8 - Wrote a method to update the camera and lights when the player moves around the scene. Added an extension to the GVC
SCNSceneRendererDelegate { didApplyAnimationsAtTime }. Remember to add the sceneView.delegate = true to the setupScene(). added new methods to create new lanes, add new lanes and remove unused lanes. -
commit9 - Imported the images/scns for the vegetation and vehicles. Added these into the util folder into the Model struct. 2 methods added in GVC for these models to be implemented.

