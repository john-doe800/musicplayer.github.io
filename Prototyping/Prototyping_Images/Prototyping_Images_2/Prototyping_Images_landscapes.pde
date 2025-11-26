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
float imageDivX = appWidth*2.9/27.9; //
float imageDivY = appHeight*3/21.5;
float imageDivWidth = appWidth*7/27.9;
float imageDivHeight = appHeight*8/21.5; 
//
String upArrow = "../../../";
String folder = "Test Image/"; //aWkward
String Test = "Test";
String fileExtensionJPEG = ".jpeg";
String imagePathway1 = upArrow + folder + Test + fileExtensionJPEG;
//println("Bike Pathway:", imagePathway1);
//Image Loading & Aspect Ratio
PImage image1 = loadImage( imagePathway1 );
int imageWidth1 = 273; //Hardcoded
int imageHeight1 = 185; //Hardcoded
//Aspect Ratio
float image1AspectRatio_GreaterOne = ( imageWidth1 >= imageHeight1 ) ? float(imageWidth1)/float(imageHeight1) : float(imageHeight1)/float(imageWidth1) ; //Ternary Operator
//Hardcoded Greater-Than-One Aspect Ratio
//How to make image bigger or smaller
println(image1AspectRatio_GreaterOne);
//DIV
rect( imageDivX, imageDivY, imageDivWidth, imageDivHeight );
//
image( image1, imageDivX, imageDivY, imageDivWidth, imageDivHeight );
