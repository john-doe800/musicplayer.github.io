fullScreen();
int appWidth = displayWidth; //width
int appHeight = displayHeight; //height

//Population
float titleDivX1 = appWidth*3.4/5; 
float titleDivY1 = appHeight*1/15;
float titleDivWidth1 = appWidth*3/12;
float titleDivHeight1 = appHeight*1/10; 
//
//Strings, Text, Literal
String title = "music player";

float fontSize = appHeight; //Entire Program
PFont titleFont;
String font = "8bitoperator-JVE"; //Spelling of the Font Matters
titleFont = createFont (font, fontSize);
//
println(fontSize, font, titleFont);

float fontSizefont = 65 ; //this is as big as it can go
float fontAspectRatio = fontSizefont / titleDivHeight1;
fontSize = titleDivHeight1*fontAspectRatio;
println("font Aspect Ratio", fontAspectRatio);
println(); 
rect( titleDivX1, titleDivY1, titleDivWidth1, titleDivHeight1 );
//
color redInk = #D31C34; 
color whiteInk = #FFFFFF;
color resetInk = whiteInk;
fill(redInk); //hexidecimal
//
textAlign (CENTER, TOP);
//

textFont (titleFont,fontSize);
float constantDecrease = 0.99;
//
  fontSize *= constantDecrease;
  textFont (titleFont,fontSize);
//
text( title, titleDivX1, titleDivY1, titleDivWidth1, titleDivHeight1 );
fill (resetInk);
// end program
