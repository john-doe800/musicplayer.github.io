/* String
*/
//
//Display
fullScreen(); //Landscape
//size(500, 100); //Portrait
int appWidth = displayWidth; //width
int appHeight = displayHeight; //height
//println("Display VARS:", "appWidth:"+appWidth, "appHeight:"+appHeight);
//println("\t\t\t\tFullScreen, displayWidth:\t"+displayWidth, "\tdisplayHeight:\t"+displayHeight, "\n\t\t\t\tSize\t, width:\t\t"+width, "\theight:\t\t"+height);
//
//Population
float stringDivX = appWidth*1/4; 
float stringDivY = appHeight*1/10;
float stringDivWidth = appWidth*1/2;
float stringDivHeight = appHeight*1/10; 
//Strings, Text, Literal
String title = "this is green.";
/* Full String longer than Rectangle,  "Wahoo! I changed 2D Size."
 - When a String just fits the height aspect ratio is the largest, sometimes >1
 - Fonts differs in WHITE SPACE around the foreground "coloured ink"
 */
// Students enter all text from Case Study

/*Fonts from OS
 println("Start of Console"); //ERROR: in case CONSOLE Memory not enough
 String[] fontList = PFont.list(); //To list all fonts available on system
 printArray(fontList); //For listing all possible fonts to choose, then createFont
 */
float fontSize = appHeight; //Entire Program
PFont titleFont;
String Consolas = "Consolas"; //Spelling of the Font Matters
titleFont = createFont (Consolas, fontSize);
//
println(fontSize, Consolas, titleFont);
/*Fonts from OS
 println("Start of Console"); //ERROR: in case CONSOLE Memory not enough
 String[] fontList = PFont.list(); 
 To list all fonts available on system
 printArray(fontList); 
 For listing all possible fonts to choose, then createFont
 Spelling Counts and must compare CONSOLE v Tools / Create Font / Create Font Spelling
 Tools / Create Font / Find Font / Do Not Press "OK", known conflict between loadFont() and createFont()
*/
float fontSizeConsolas = 87.0; //this is the biggest font size 
//textFont() has option to combine font declaration with textSize()
//Tools / Create Font / Find Font / Do Not Press "OK", known conflict between loadFont() and createFont()
// 
float ConsolasAspectRatio = fontSizeConsolas / stringDivHeight;
fontSize = stringDivHeight*ConsolasAspectRatio;
println("Consolas Aspect Ratio", ConsolasAspectRatio);
println(); //skip a line
//Note: DIV to "see" variables
rect( stringDivX, stringDivY, stringDivWidth, stringDivHeight );
//
color redInk = #D31C34; 
color whiteInk = #FFFFFF;
color resetInk = whiteInk;
fill(redInk); //hexidecimal
//
textAlign (CENTER, CENTER);
//
textFont (titleFont,fontSize);
//
text( title, stringDivX, stringDivY, stringDivWidth, stringDivHeight );
fill (resetInk);
// end program
