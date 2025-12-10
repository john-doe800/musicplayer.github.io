// String
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
float stringDivX1 = appWidth*1/4; 
float stringDivY1 = appHeight*1/10;
float stringDivWidth1 = appWidth*1/2;
float stringDivHeight1 = appHeight*1/10; 
//
float stringDivX2 = stringDivX1; // Cascading VARS 
float stringDivY2 = appHeight*3/10;;
float stringDivWidth2 = appWidth*1/4;
float stringDivHeight2 = stringDivHeight1; 
//
float stringDivX3 = stringDivX1; 
float stringDivY3 = appHeight*5/10;
float stringDivWidth3 = appWidth*5/8;
float stringDivHeight3 = stringDivHeight1; 
//
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
float ConsolasAspectRatio = fontSizeConsolas / stringDivHeight1;
fontSize = stringDivHeight1*ConsolasAspectRatio;
println("Consolas Aspect Ratio", ConsolasAspectRatio);
println(); //skip a line
//Note: DIV to "see" variables
rect( stringDivX1, stringDivY1, stringDivWidth1, stringDivHeight1 );
rect( stringDivX2, stringDivY2, stringDivWidth2, stringDivHeight2 );
rect( stringDivX3, stringDivY3, stringDivWidth3, stringDivHeight3 );
//
color redInk = #D31C34; 
color whiteInk = #FFFFFF;
color resetInk = whiteInk;
fill(redInk); //hexidecimal
//
textAlign (CENTER, TOP);
//
//Drawing text
//ERROR check fontSize, decreasing the text when wraped or not shown
textFont (titleFont,fontSize);
float constantDecrease = 0.99; //99% of original or 1% decrease
for( i=1; i<3, i++ ) {
    while ( textWidth( title ) > stringDivWidth[i] ) {
  //end WHILE error check text wrap
  //ERROR ifninite loop, requires exit() and println
  fontSize *= constantDecrease;
  textFont (titleFont,fontSize);
}

//WHILE Error Check
//textFont() has option to combine font declaration with textSize()
//textFont() is better for more than one PFont Variable
//
text( title, stringDivX1, stringDivY1, stringDivWidth1, stringDivHeight1 );
fill (resetInk);
// end program
