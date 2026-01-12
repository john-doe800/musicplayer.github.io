/* Creating Buttons
 - Understanding how the mixing of boilerplate happens
 - Introducing Booleans to communicate between procedures, 1 bite of information
 
 - Specific Debugging Topics
 - draw() varaibles initiated in Global Varaibles due to LOOP
 - Mousex & y keyVariables
 - Using println() to test functionality
 
 - What to copy and paste
 - Quit & Play DIV
 
 
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
color white = 0;
//CANVAS: default background and ink
resetBackground = white;
resetInk = black;
//button colors
color

color yellow = #B79412;
color lyellow = #FAE597;
color obrown = #BC841B;
color lightb = #F6E4BC;
  playColorBackground = obrown ;
  playColorSymbol = dyellow ;
  playColorBackgroundActivated = lightb;
  playColorSymbolActivated = lightb;

}
void draw() {
  //println ("My Mouse is", mousex, mousey);
  if ( mousex>playboxx && mousex<playboxx+playboxWidth && mousey>playboxy && mousey<playboxy+playboxHeight ) {
    //println("Wahoo! I'm playing you");
    playButton = true;
    //fill();
    rect(playboxx, playboxy, playboxWidth, playboxHeight);
    //fill();
    triangle(playSymbolx1, playSymboly1, playSymbolx2, playSymboly2, playSymbolx3, playSymboly3);
    //fill();
  } else {
    //print(" ");
    playButton = false;
    fill();
    rect(playboxx, playboxy, playboxWidth, playboxHeight);
    fill();
    triangle(playSymbolx1, playSymboly1, playSymbolx2, playSymboly2, playSymbolx3, playSymboly3);
    fill();
  }//End Introduction of DRAW()
  //
} //End draw
//
void mousePressed() {
  //Music Play Functions
  if ( playButton == true ) {
    println("Play My Song");
  } else {
    //println(" ");
    playButton = false;
    fill(playColorBackground);
    rect(playboxx, playboxy, playboxWidth, playboxHeight);
    fill(playColorSymbol);
    triangle(playSymbolx1, playSymboly1, playSymbolx2, playSymboly2, playSymbolx3, playSymboly3);
    fill(resetBackground);
  }
} //End Mouse Pressed
//
void keyPressed() {
} //End Key Pressed
//
//End MAIN Program
