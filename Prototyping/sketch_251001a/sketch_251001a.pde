/* Divs: 2D Rectangles
*/
//
fullScreen(); //displayWidth //displayHeight
println(displayWidth , displayHeight );
int appWidth = displayWidth;
int appHeight = displayHeight;
//
float imageX = appWidth * 1/4;
float imageY = appHeight * 1/4;
float imageWidth = appWidth * 1/2;
float imageHeight = appHeight * 1/2;
float playX1 = appWidth + imageWidth * 1/4; 
float playY1 = appHeight + imageHeight * 1/4;
float playX2 = appWidth * 3/4;
float playY2 = appHeight * 1/2;
float playX3 = appWidth * 1/4;
float playY3 = appHeight * 3/4;
//

triangle(playX1,playY1,playX2,playY2,playX3,playY3);
