/* DIVs: 2D Rectangles
*/
//
fullScreen(); //dispalyWidth //displayHeight
println(displayWidth, displayHeight);
int appWidth = displayWidth; //Best Practice with Key Variables
int appHeight = displayHeight;

//image
float divX = appWidth * 2.9/27.9;
float divY = appHeight * 2/21.6;
float divWidth = appWidth * 10/27.9;
float divHeight = appHeight * 12/21.6;
//
//Ruler action of numbers, verify by changing ratio numbers from GUI DIVs
//Paperfolding action of ratios, never changes
//Order of Operations: ruler + paperfolding = correct location
float stopX = divX + divWidth * 1/4;
float stopY = divY + divHeight * 1/4;;
float stopWidth = divWidth * 2/4; //1/2
float stopHeight = divHeight * 1/2;
float mute1X1 = stopX;
float mute1Y1 = stopY;
float mute2X2 = mute1X1 + stopWidth;
float mute2Y2 = mute1Y1 + stopHeight;
float mute3X1 = mute2X2;
float mute3Y1 = mute1Y1;
float mute4X2 = mute1X1; //Cascading Varibles v one-reference
float mute4Y2 = mute2Y2;
float playX1 = divX + divWidth * 1/4; 
float playY1 = divY + divHeight * 1/4;
float playX2 = divX + divWidth * 3/4;
float playY2 = divY + divHeight * 1/2;
float playX3 = divX + divWidth * 1/4;
float playY3 = divY + divHeight * 3/4;
//
//DIVs: for human confirmation of formulaic and variable accuracy
rect(divX, divY, divWidth, divHeight); ////Group of Variables
//
//Library of Symbols, requires DIVs
rect(stopX, stopY, stopWidth, stopHeight);
//triangle(playX1, playY1, playX2, playY2, playX3, playY3); //Group of Variables
float divX = appWidth * 13.3/27.9;
float divY = appHeight * 19.4/21.6;
float divWidth = appWidth * 1/27.9;
float divHeight = appHeight * 2/21.6;
