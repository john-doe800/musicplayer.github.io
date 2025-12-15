fullScreen();
int appWidth = displayWidth; //width
int appHeight = displayHeight; //height

//Population
float titleDivX1 = appWidth*1/4; 
float titleDiv1 = appHeight*1/10;
float titleDivWidth1 = appWidth*1/2;
float titleDivHeight1 = appHeight*1/10; 
//
//Strings, Text, Literal
String title = "music player";

/*Fonts from OS
 println("Start of Console"); //ERROR: in case CONSOLE Memory not enough
 String[] fontList = PFont.list(); //To list all fonts available on system
 printArray(fontList); //For listing all possible fonts to choose, then createFont
 */
float fontSize = appHeight; //Entire Program
PFont titleFont;
String font = "8bitoperator-JVE"; //Spelling of the Font Matters
titleFont = createFont (font, fontSize);
//
println(fontSize, font, titleFont);
/*Fonts from OS
 println("Start of Console"); //ERROR: in case CONSOLE Memory not enough
 String[] fontList = PFont.list(); 
 To list all fonts available on system
 printArray(fontList); 
 For listing all possible fonts to choose, then createFont
 Spelling Counts and must compare CONSOLE v Tools / Create Font / Create Font Spelling
 Tools / Create Font / Find Font / Do Not Press "OK", known conflict between loadFont() and createFont()
*/
float fontSizefont = 87.0; //this is the biggest font size 
//textFont() has option to combine font declaration with textSize()
//Tools / Create Font / Find Font / Do Not Press "OK", known conflict between loadFont() and createFont()
// 
float fontAspectRatio = fontSizefont / titleDivHeight1;
fontSize = titleDivHeight1*fontAspectRatio;
println("font Aspect Ratio", fontAspectRatio);
println(); //skip a line
//Note: DIV to "see" variables
rect( titleDivX1, titleDiv1, titleDivWidth1, titleDivHeight1 );
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
  //end WHILE error check text wrap
  //ERROR ifninite loop, requires exit() and println
  fontSize *= constantDecrease;
  textFont (titleFont,fontSize);
//WHILE Error Check
//textFont() has option to combine font declaration with textSize()
//textFont() is better for more than one PFont Variable
//
text( title, titleDivX1, titleDiv1, titleDivWidth1, titleDivHeight1 );
fill (resetInk);
// end program
