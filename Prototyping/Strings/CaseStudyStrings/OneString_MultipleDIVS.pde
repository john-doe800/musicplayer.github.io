fullScreen();
background(235, 232, 185); 
fullScreen(); //displayWidth //displayHeight
println(displayWidth, displayHeight);
int appWidth = displayWidth; 
int appHeight = displayHeight;
//
//DIV 1
float np = appWidth * 3.1/5;
float npY = appHeight * 1/5;
float npWidth = appWidth * 1.5/4;
float npHeight = appHeight * 1/3;
rect(np, npY, npWidth, npHeight);
//
//DIV 2
float titleX = appWidth * 3.4/5;
float titleY = appHeight * 1/15;
float titleWidth = appWidth * 1.5/6;
float titleHeight = appHeight * 1/10;
//
String title = "music player";
//
float fontSize = appHeight;
PFont titleFont;
String operator = "8bitOperator-JVE";
titleFont = createFont (operator, fontSize);
//
println(fontSize, operator, titleFont);
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
//

color whiteInk = #FFFFFF;
fill(whiteInk); 

textAlign (CENTER, TOP);
textFont (titleFont,fontSize);
float constantDecrease = 0.99; //99% of original or 1% decrease

  fontSize *= constantDecrease;
  textFont (titleFont,fontSize);
text( title, stringDivX1, stringDivY1, stringDivWidth1, stringDivHeight1 );
fill (resetInk);






rect(titleX, titleY, titleWidth, titleHeight);
rect(np, npY, npWidth, npHeight);
