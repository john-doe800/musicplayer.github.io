void setup () {
  //Display
  size(600,500);
  appWidth = width;
  appHeight = height;

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

playSymbolx1 = playboxWidth * 1/4;
playSymboly1 = playboxHeight * 1/4;
playSymbolx2 = playboxWidth * 1/4;
playSymboly2 = playboxHeight *3/4;
playSymbolx3 = playboxWidth * 3/4;
playSymboly3 = playboxHeight *1/2;
triangle(playSymbolx1, playSymboly1, playSymbolx2, playSymboly2, playSymbolx3, playSymboly3);
