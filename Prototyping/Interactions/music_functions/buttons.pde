/* Buttons
 - quitButton
 - divs
 - musicButtonShapes, 2-D Music Buttons
 - hoverOver_draw(), Hoverover for buttons, draw()
 */
//
void quitButton() {
  noLoop(); //Adjusts the exit of the program using finishing draw()
  exit(); //With noLoop(), exit happens here
  println("Final Line of mousePressed and finishes draw()");
}//End Quit Button
//
void divs() {
  quitdiv();
  playdiv();
  titlediv();
} //End divs
//
void quitdiv() {
  rect(quitdivX, quitdivY, quitdivWidth, quitdivHeight);
} // End Quit Button div
//
void playdiv() {
  rect(playdivX, playdivY, playdivWidth, playdivHeight);
} // End Plauy Button div
//
void titlediv() {
  rect( stringdivX, stringdivY, stringdivWidth, stringdivHeight );
} //End Title div
//
void playButtonSymbol() {
  triangle(playSymbolX1, playSymbolY1, playSymbolX2, playSymbolY2, playSymbolX3, playSymbolY3);
} //End Play Button Symbol
//
void musicButtonShapes() {
  playButtonSymbol();
} // End Msuic Button Shapes
//
void quitButtonActive() {
  fill(quitBackgroundActivated);
  quitdiv();
  fill(resetBackground);
  fill(quitButtonInk);
  easyTextQuitButton();
  fill(resetInk);
} //End Quit Button Active
//
void quitButtonRegular() {
  fill(quitBackground);
  quitdiv();
  fill(resetBackground);
  fill(quitButtonInk);
  easyTextQuitButton();
  fill(resetInk);
} //End Quit Button Active
//
void playButtonActive() {
  fill(playColourBackgroundActivated);
  playdiv();
  fill(playColourSymbolActivated);
  playButtonSymbol();
  fill(resetBackground);
} // End Play Button Active
//
void playButtonReady() {
  fill(playColourBackground);
  playdiv();
  fill(playColourSymbol);
  playButtonSymbol();
  fill(resetBackground);
} // End Play Button Ready
//
void hoverOver_draw() {
  //Button HoverOver
  if ( mouseX>quitdivX && mouseX<quitdivX+quitdivWidth && mouseY>quitdivY &&mouseY<quitdivY+quitdivHeight ) {
    quitButtonActive();
  } else {
    quitButtonRegular();
  }//End Quit Button Hover Over
  if ( mouseX>playdivX && mouseX<playdivX+playdivWidth && mouseY>playdivY && mouseY<playdivY+playdivHeight ) {
    if ( playButton == false ) playButtonActive();
  } else {
    //Order of below creates optical illusion - switching colours
    playButtonReady();
    if ( playButton == true ) playButtonActive();
  }//End Play Button Hover Over
//
//End Buttons Subprogram
