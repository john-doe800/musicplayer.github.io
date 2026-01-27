//Library - Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
//All Global Variables execute first ... A global Variable is a Global Variable
void setup() {
  //Display CANVAS
  //size(); //width //height
  fullScreen(); //displayWidth //displayHeight
  appWidth = displayWidth;
  appHeight = displayHeight;
  //
  divPopulation();
  divs(); //See Buttons
  musicButtonShapes();
  nightMode=false; //initialization in setup() only
  colourPopulation();
  musicSetup();
  textSetup();
  testMetaData(); //Note: println only
  //
} //End setup
//
void draw() {
  //println ("My Mouse is", mouseX, mouseY);
  //println (playButton);
  hoverOver_draw(); //See Buttons
  //
  saveSongTitle(); //See Music Meta Data
  drawText();
  //
} //End draw
//
void mousePressed() {
  //Quit Button: does not use Boolean, only mouseX&Y already present in system key variables
  //CAUTION: must use if-elseIf-else or Clickable Screen will get confused
  if ( mouseX>quitdivX && mouseX<quitdivX+quitdivWidth && mouseY>quitdivY &&mouseY<quitdivY+quitdivHeight ) {
    quitButton(); //See Below
  }
} //End Mouse Pressed
//
void keyPressed() {
  //Note, CAPs Lock on Code: key=='[CAP]' || key=='[lowerCase]'
  //Note: if ( key==CODED || keyCode==SpecialKey ) ; //Special Keys abriviated CAPS
  //CAUTION: Order Matters
  if (key=='Q' || key=='q') {
    quitButton();  //See Below
  } //Quit Button
  if (key=='D' || key=='d') {
    if ( nightMode == false ) {
      nightMode = true;
    } else {
      nightMode = false;
    }
    colourPopulation();
  } //Night Mode
  //
  musicFunctionsKeyPressed(); //See Music
} //End Key Pressed
//End Music Functions
