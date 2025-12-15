/* Aspect Ratio: Bike Only Demonstration
- Old Man 
*/
//
//Display
fullScreen(); //Test
//size(500, 700); //Portrait
int appWidth = displayWidth; //width
int appHeight = displayHeight; //height
//println("Display VARS:", "appWidth:"+appWidth, "appHeight:"+appHeight, "\n\t\t\t\t\t\t\t\t\tFullScreen, displayWidth:"+displayWidth, "displayHeight:"+displayHeight, "\n\t\t\t\t\t\t\t\t\tSize\t\t, width:"+width, "height:"+height);
//
//Population
float landscapeDiv = appWidth*2.9/27.9; //
float landscapeDivY = appHeight*3/21.5;
float landscapeDivWidth = appWidth*7/27.9;
float landscapeDivHeight = appHeight*8/21.5; 
//
String upArrow = "../../../";
String folder = "Test Image/"; //aWkward
String Test = "Test";
String fileExtensionJPEG = ".jpeg";
String imagePathway1 = upArrow + folder + Test + fileExtensionJPEG;
//println("Bike Pathway:", imagePathway1);
//Image Loading & Aspect Ratio
PImage landscape1 = loadImage( imagePathway1 );
int landscapeWidth = 273; //Hardcoded
int landscapeHeight = 185; //Hardcoded
//Aspect Ratio
float landscape1AspectRatio_GreaterOne = ( landscapeWidth >= landscapeHeight ) ? float(landscapeWidth)/float(landscapeHeight) : float(landscapeHeight)/float(landscapeWidth) ; //Ternary Operator
//Hardcoded Greater-Than-One Aspect Ratio
//How to make image bigger or smaller
println(landscape1AspectRatio_GreaterOne);
//DIV
rect( landscapeDiv, landscapeDivY, landscapeDivWidth, landscapeDivHeight );
//
image( landscape1, landscapeDiv, landscapeDivY, landscapeDivWidth, landscapeDivHeight );
