void divPopulation() {
 void divPopulation() {
  quitdivX = appWidth * 24 / 25;
  quitdivY = appHeight * 0;
  quitdivWidth = appWidth * 1 / 25;
  quitdivHeight = appHeight * 1 / 25;

  playdivX = appWidth * 14 / 27.5;
  playdivY = appHeight * 3.5 / 4;
  playdivWidth = appWidth * 1 / 15;
  playdivHeight = appHeight * 1 / 10;

  playsymbolX1 = playdivX + playdivWidth * 1 / 4;
  playsymbolY1 = playdivY + playdivHeight * 1 / 4;
  playsymbolX2 = playsymbolX1 + playdivWidth * 1 / 2;
  playsymbolY2 = playdivY + playdivHeight * 1 / 2;
  playsymbolX3 = playsymbolX1;
  playsymbolY3 = playdivY + playdivHeight * 3 / 4;
}

  //
  stringdivX = appWidth*70/279;
  stringdivY = appHeight*22/216;
  stringdivWidth = appWidth*140/279;
  stringdivHeight = appHeight*22/216;
} //End div Population
//
void colourPopulation() {
  color black = 0; //Gray Scale, much smaller color, 256 bits
  color white = 255; //Gray Scale
  color grayScale = 256/2; //Example Gray Scale, small memory
  color gray = #B9B9B9; //Example Gray Scale, large memory
  //CANVAS: default background and ink
  resetBackgroundDay = white;
  resetInkDay = black;
  resetBackgroundNight = 256/4;
  resetInkNight = int(256*0.75); // 3/4 of origoinal, not 1/4
  //println("Casting answer is:", resetInkNight); //Exactly 192, no rounding invovled, checked on calculator
  //Button Colours: layering local variables leads to preferences controled by Booleans
  color red = #FF0000;
  color purple1 = #9D03FF; //human name for hexidecimal code
  color yellow = #FFFF00;
  color purple2 = #2C08FF; //Day Mode Ink
  color darkGray = grayScale;
  color ligthGray = gray;
  //Note: able to use a Ternary Operator but ineffiecient
  //println("Night Mode Boolean", nightMode);
  if ( nightMode == true ) {
    resetBackground = resetBackgroundNight;
    resetInk = resetInkNight;
    playColourBackground = darkGray;
    playColourSymbol = ligthGray;
    playColourBackgroundActivated = ligthGray;
    playColourSymbolActivated = darkGray;
    quitBackground = ligthGray;
    quitBackgroundActivated = red;
    quitButtonInk = darkGray;
    titleInk = darkGray;
  } else
  {
    //Previously the Day Colour Assignments
    resetBackground = resetBackgroundDay;
    resetInk = black;
    playColourBackground = purple1;
    playColourSymbol = yellow;
    playColourBackgroundActivated = yellow;
    playColourSymbolActivated = purple1;
    quitBackground = white;
    quitBackgroundActivated = red;
    quitButtonInk = black;
    titleInk = purple2;
  } //End Night Mode Colors
  //
} //End Colour Population
//
// End Subprogram Population
