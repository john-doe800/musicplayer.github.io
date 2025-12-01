fullScreen();
background(235, 232, 185); //CHANGE FOR PICTURE LATER
fullScreen(); //displayWidth //displayHeight
println(displayWidth, displayHeight);
int appWidth = displayWidth; 
int appHeight = displayHeight;

//image box
float imageboxX = appWidth * 0.1/6;
float imageboxY = appHeight * 1/15;
float imageboxWidth = appWidth * 1/4;
float imageboxHeight = appHeight * 1/2;
rect(imageboxX, imageboxY, imageboxWidth, imageboxHeight); 
//

//music selection box
float selectionX = appWidth * 3.1/5;
float selectionY = appHeight * 1/5;
float selectionWidth = appWidth * 1.5/4;
float selectionHeight = appHeight * 1/3;
rect(selectionX, selectionY, selectionWidth, selectionHeight);

//title box
float titleX = appWidth * 3.4/5;
float titleY = appHeight * 1/15;
float titleWidth = appWidth * 1.5/6;
float titleHeight = appHeight * 1/10;
rect(titleX, titleY, titleWidth, titleHeight);

//control panel
float panelX = appWidth * 1/27.5;
float panelY = appHeight * 3/4;
float panelWidth = appWidth * 26/27.9;
float panelHeight = appHeight * 1/4;
rect(panelX, panelY, panelWidth, panelHeight);

//progress bar
float progressX = appWidth * 1.45/27.5;
float progressY = appHeight * 3.25/4;
float progressWidth = appWidth * 25/27.9;
float progressHeight = appHeight * 1/50;
rect(progressX, progressY, progressWidth, progressHeight);

//music button boxes
float upboxX = appWidth * 1.45/27.5; // volume up
float upboxY = appHeight * 3.5/4;
float upboxWidth = appWidth * 1/15;
float upboxHeight = appHeight * 1/10;
rect(upboxX, upboxY, upboxWidth, upboxHeight);

float downboxX = appWidth * 3.5/27.5; // volume down
float downboxY = appHeight * 3.5/4;
float downboxWidth = appWidth * 1/15;
float downboxHeight = appHeight * 1/10;
rect(downboxX, downboxY, downboxWidth, downboxHeight);

float previousboxX = appWidth * 7.55/27.5; // previous song
float previousboxY = appHeight * 3.5/4;
float previousboxWidth = appWidth * 1/15;
float previousboxHeight = appHeight * 1/10;
rect(previousboxX, previousboxY, previousboxWidth, previousboxHeight);

float rewindboxX = appWidth * 9.60/27.5; // rewind 
float rewindboxY = appHeight * 3.5/4;
float rewindboxWidth = appWidth * 1/15;
float rewindboxHeight = appHeight * 1/10;
rect(rewindboxX, rewindboxY, rewindboxWidth, rewindboxHeight);

float pauseboxX = appWidth * 11.65/27.5; // pause
float pauseboxY = appHeight * 3.5/4;
float pauseboxWidth = appWidth * 1/15;
float pauseboxHeight = appHeight * 1/10;
rect(pauseboxX, pauseboxY, pauseboxWidth, pauseboxHeight);

float playboxX = appWidth * 13.70/27.5; // play
float playboxY = appHeight * 3.5/4;
float playboxWidth = appWidth * 1/15;
float playboxHeight = appHeight * 1/10;
rect(playboxX, playboxY, playboxWidth, playboxHeight);

float ffboxX = appWidth * 15.75/27.5; // fast forward
float ffboxY = appHeight * 3.5/4;
float ffboxWidth = appWidth * 1/15;
float ffboxHeight = appHeight * 1/10;
rect(ffboxX, ffboxY, ffboxWidth, ffboxHeight);

float nextboxX = appWidth * 17.80/27.5; // next song
float nextboxY = appHeight * 3.5/4;
float nextboxWidth = appWidth * 1/15;
float nextboxHeight = appHeight * 1/10;
rect (nextboxX, nextboxY, nextboxWidth, nextboxHeight);
