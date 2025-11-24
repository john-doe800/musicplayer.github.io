/* Aspect Ratio: oldman Only Demonstration
- oldman
*/
//
//Display
fullScreen(); //Landscape
//size(500,700); //Portrait
int appWidth = displayWidth; //width
int appHeight = displayHeight; //height
println("Display VARS:", "appWidth:"+appWidth, "appHeight:"+appHeight, "\n\t\t\t\t\t\t\t\t\tFullScreen, displayWidth:"+displayWidth, "displayHeight:"+displayHeight, "\n\t\t\t\t\t\t\t\t\tSize\t\t, width:"+width, "height:"+height);
//
//population
float imageDivX = appWidth * 2.9/27.9;
float imageDivY = appHeight * 3/21.5;
float imageDivWidth = appWidth * 7/27.9;
float imageDivHeight = appHeight * 10/21.5;
//
//image aspect ration vars and algorithm
//directory or pathway, concatenation
String upArrow = "../../";
String folder = "Test Image";
String oldman = "oldman";
String fileExtensionJPG = ".jpg";
String imagePathway1 = upArrow + folder + oldman + fileExtensionJPG;
println("oldman Pathway:", imagePathway1);
//image loading and aspect ratio
PImage image1 = loadImage(imagePathway1);
int imageWidth = 2800 ; //hardcoded
int imageHeight = 3500 ; //hardcoded
//aspect ratio
//float imageAspectRatio+GreaterOne = () : ;
//
//DIV
rect( imageDivX, imageDivY, imageDivWidth, imageDivHeight );
//
image( image1, imageDivX, imageDivY, imageWidthAdjusted, imageHeightAdjusted );
