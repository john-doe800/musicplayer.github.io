/* Aspect Ratio: Bike Only Demonstration
- Old Man 
*/
//
//Display
fullScreen(); //Landscape
//size(500, 700); //Portrait
int appWidth = displayWidth; //width
int appHeight = displayHeight; //height
//println("Display VARS:", "appWidth:"+appWidth, "appHeight:"+appHeight, "\n\t\t\t\t\t\t\t\t\tFullScreen, displayWidth:"+displayWidth, "displayHeight:"+displayHeight, "\n\t\t\t\t\t\t\t\t\tSize\t\t, width:"+width, "height:"+height);
//
//population
float imageDivX = appWidth * 2.9/27.9; 
float imageDivY = appHeight * 3/21.5; 
float imageDivWidth = appWidth * 7/27.9;
float imageDivHeight = appHeight*8/21.5;
//
//Image Aspect Ratio Vars & Algorithm
//Directory or Pathway, Concatenation
String upArrow = "../../";
String folder = "Test Image"; //aWkward
String oldman = "oldman";
String fileExtensionPNG = ".png";
String imagePathway1 = upArrow + folder + oldman + fileExtensionPNG;
//println("Bike Pathway:", imagePathway1);
//Image Loading & Aspect Ratio
PImage image1 = loadImage( imagePathway1 );
int imageWidth1 = 2800; //Hardcoded
int imageHeight1 = 3500; //Hardcoded
//Aspect Ratio
float image1AspectRatio_LesserOne = ( imageWidth1 >= imageHeight1 ) ? float(imageWidth1)/float(imageHeight1) : float(imageHeight1)/float(imageWidth1) ; //Ternary Operator
//Hardcoded Greater-Than-One Aspect Ratio
//
//DIV
rect( imageDivX, imageDivY, imageDivWidth, imageDivHeight );
//
image( image1, imageDivX, imageDivY);
//image( image1, imageDivX, imageDivY, imageWidthAdjusted, imageHeightAdjusted );
