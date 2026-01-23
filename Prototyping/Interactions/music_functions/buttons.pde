/* Buttons
 - quitButton
 - DIVs
 - musicButtonShapes, 2-D Music Buttons
 - hoverOver_draw(), Hoverover for buttons, draw()
 - TBA
 */
//
void quitButton() {
  noLoop(); //Adjusts the exit of the program using finishing draw()
  exit(); //With noLoop(), exit happens here
  println("Final Line of mousePressed and finishes draw()");
}//End Quit Button
//
void DIVs() {
  qb();
  playdiv();
} //End DIVs
//
void qb() {
  rect(qbX, qbY, qbWidth, qbHeight);
} // End Quit Button DIV
//
void playdiv() {
  rect(playdivX, playdivY, playdivWidth, playdivHeight);
} // End Plauy Button DIV
void playButtonSymbol() {
  triangle(playsymbolX1, playsymbolY1, playsymbolX2, playsymbolY2, playsymbolX3, playsymbolY3);
} //End Play Button Symbol

void musicButtonShapes() {
  triangle(playsymbolX1, playsymbolY1, playsymbolX2, playsymbolY2, playsymbolX3, playsymbolY3);
} // End Msuic Button Shapes
//
void quitButtonActive() {
  fill(quitBackgroundActivated);
  qb();
  fill(resetBackground);
  fill(quitButtonInk);
  easyTextQuitButton();
  fill(resetInk);
} //End Quit Button Active
//
void quitButtonRegular() {
  fill(quitBackground);
  qb();
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
  if ( mouseX>qbX && mouseX<qbX+qbWidth && mouseY>qbY &&mouseY<qbY+qbHeight ) {
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
} //End Hoverover, draw()
//
//End Buttons Subprogram
