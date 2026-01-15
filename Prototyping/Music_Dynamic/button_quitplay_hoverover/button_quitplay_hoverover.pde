/* Creating Buttons
 - Understanding how the mixing of boilerplate happens
 - Introducing Booleans to communicate between procedures, 1 bite of information
 
 - Specific Debugging Topics
 - draw() varaibles initiated in Global Varaibles due to LOOP
 - Mousex & y keyVariables
 - Using println() to test functionality
 
 - What to copy and paste
 - Quit & Play box
 
 
 CONTINUE HERE
 
 
 
 - Quit Button: Time Stamp specficially noLoop() and exit()

 - Next Program to Update: Music Dynamic v2
 
 */
//
//Library - Minim
//
//Global Variables
int appWidth, appHeight;
float qbx, qby, qbWidth, qbHeight;
float playboxx, playboxy, playboxWidth, playboxHeight;
float playSymbolx1, playSymboly1, playSymbolx2, playSymboly2, playSymbolx3, playSymboly3;
//
Boolean playButton=false;
//
color resetBackground, resetInk;
color playColourBackground, playColourSymbol, playColourBackgroundActivated, playColourSymbolActivated;
color quitBackground, quitBackgroundActivated;
//
void setup() {
  //Display
  size(500, 400);
  //fullScreen();
  appWidth = width;
  appHeight = height;
  //
 float qbx = appWidth * 24/25;
float qby = appHeight * 0.01/20;
float qbWidth = appWidth * 1/25;
float qbHeight = appHeight * 1/25;
rect(qbx, qby, qbWidth, qbHeight);
//
float playboxx = appWidth * 13.70/27.5; // play
float playboxy = appHeight * 3.5/4;
float playboxWidth = appWidth * 1/15;
float playboxHeight = appHeight * 1/10;
rect(playboxx, playboxy, playboxWidth, playboxHeight);
//
playSymbolx1 = playboxWidth * 1/4;
playSymboly1 = playboxHeight * 1/4;
playSymbolx2 = playboxWidth * 1/4;
playSymboly2 = playboxHeight *3/4;
playSymbolx3 = playboxWidth * 3/4;
playSymboly3 = playboxHeight *1/2;
triangle(playSymbolx1, playSymboly1, playSymbolx2, playSymboly2, playSymbolx3, playSymboly3);
//
//colour population
color black = 0;
color white = 255;
color grayscale = 256/2;
color gray = #898989;
//CANVAS: default background and ink
resetBackground = white;
resetInk = black;
//button colors
color yellow = #B79412;
color lyellow = #FAE597;
color obrown = #BC841B;
color lightb = #F6E4BC;
  playColorBackground = obrown ;
  playColorSymbol = dyellow ;
  playColorBackgroundActivated = lightb;
  playColorSymbolActivated = lightb;
    quitBackground = obrown;
  quitBackgroundActivated = lightb;

}
void draw() {
  if ( mousex>playboxx && mousex<playboxx+playboxWidth && mousey>playboxy && mousey<playboxy+playboxHeight ) {
    //println("Wahoo! I'm playing you");
    playButton = true;
    fill(playColourBackgroundActivated);
    rect(playboxx, playboxy, playboxWidth, playboxHeight);
    fill(playColourSymbolActivated);
    triangle(playSymbolx1, playSymboly1, playSymbolx2, playSymboly2, playSymbolx3, playSymboly3);
    fill(resetBackground);
  } else {
    //print(" ");
    playButton = false;
    fill(playColourBackground);
    rect(playboxx, playboxy, playboxWidth, playboxHeight);
    fill(playColourSymbol);
    triangle(playSymbolx1, playSymboly1, playSymbolx2, playSymboly2, playSymbolx3, playSymboly3);
    fill(resetBackground);
  }//End Play Button Hover Over
  if ( mousex>qbx && mousex<qbx+qbWidth && mousey>qby &&mousey<qby+qbHeight ) {
    fill(quitBackgroundActivated);
    rect(qbx, qby, qbWidth, qbHeight);
    fill(resetBackground);
  } else {
    fill(quitBackground);
    rect(qbx, qby, qbWidth, qbHeight);
    fill(resetBackground);
  }//End Quit Button Hover Over
  //
} //End draw
void mousePressed() {
  //Music Play Functions
  if ( playButton == true ) {
    println("Play My Song");
    playButton=false; //reset Boolean for draw()
  } else {
    println(" ");
  }
} //End Mouse Pressed
//
void keyPressed() {
} //End Key Pressed
//
//End MAIN Program
