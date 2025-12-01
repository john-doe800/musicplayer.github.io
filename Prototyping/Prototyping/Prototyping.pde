fullScreen();
background(235, 232, 185); //CHANGE FOR PICTURE LATER
fullScreen(); //displayWidth //displayHeight
println(displayWidth, displayHeight);
int appWidth = displayWidth; 
int appHeight = displayHeight;

//image box
float imageboxX = appWidth * 0.2/12;
float imageboxY = appHeight * 1/15;
float imageboxWidth = appWidth * 1/4;
float imageboxHeight = appHeight * 1/2;
rect(imageboxX, imageboxY, imageboxWidth, imageboxHeight); 
//

//music selection box
float selectionX = appWidth * 6.2/10;
float selectionY = appHeight * 3/15;
float selectionWidth = appWidth * 1.5/4;
float selectionHeight = appHeight * 1/3;
rect(selectionX, selectionY, selectionWidth, selectionHeight);
