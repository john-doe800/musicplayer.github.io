fullScreen(); //displayWidth //displayHeight
int appWidth = displayWidth; 
int appHeight = displayHeight;

//quit button
float qbX = appWidth * 24/25;
float qbY = appHeight * 0.01/20;
float qbWidth = appWidth * 1/25;
float qbHeight = appHeight * 1/25;
rect(qbX, qbY, qbWidth, qbHeight);

float playboxX = appWidth * 13.70/27.5; // play
float playboxY = appHeight * 3.5/4;
float playboxWidth = appWidth * 1/15;
float playboxHeight = appHeight * 1/10;
rect(playboxX, playboxY, playboxWidth, playboxHeight);
