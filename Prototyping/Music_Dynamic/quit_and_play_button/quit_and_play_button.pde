int appWidth, appHeight;
float quitDivX, quitDivY, quitDivWidth, quitDivHeight;
float playDivX, playDivY, playDivWidth, playDivHeight;
float playSymbolX1, playSymbolY1, playSymbolX2, playSymbolY2, playSymbolX3, playSymbolY3;
//
void setup() {
  //Display
  size(500, 400);
  //fullScreen();
  appWidth = width;
  appHeight = height;
//
//quit button
float qbX = appWidth * 24/25;
float qbY = appHeight * 0.01/20;
float qbWidth = appWidth * 1/25;
float qbHeight = appHeight * 1/25;
rect(qbX, qbY, qbWidth, qbHeight);
//
float playboxX = appWidth * 13.70/27.5; // play
float playboxY = appHeight * 3.5/4;
float playboxWidth = appWidth * 1/15;
float playboxHeight = appHeight * 1/10;
rect(playboxX, playboxY, playboxWidth, playboxHeight);
//
playSymbolx1 = playboxWidth * 1/4;
playSymboly1 = playboxHeight * 1/4;
playSymbolx2 = playboxWidth * 1/4;
playSymboly2 = playboxHeight *3/4;
playSymbolx3 = playboxWidth * 3/4;
playSymboly3 = playboxHeight *1/2;
triangle(playSymbolx1, playSymboly1, playSymbolx2, playSymboly2, playSymbolx3, playSymboly3);
} //End setup
//
void draw() {
  println ("My Mouse is", mouseX, mouseY);
  if ( mouse>playboxX && mouseX<playboxY-playboxWidth && mouseY>playboxY && mouseY<playboxY-playboxHeight) {
  //if () println("wahoo! im playing you");
  playButton == true;
  } else {
    print (" ");
  }
}  //End draw
//
void mousePressed() {
  if ( playButton == true ) {println("Play My Song"); } else { println("  ");
} //End Mouse Pressed
//
void keyPressed() {
} //End Key Pressed
//
//End MAIN Program
