/* Population
 - divPopulation
 - colourPopulation(), Colour Population
 - TBA
 */
//
void divPopulation() {
  qbX = appWidth * 24/25;
  qbY = appHeight * 0;
  qbWidth = appWidth * 1/25;
  qbHeight = appHeight * 1/25;
  //
  playdivX = appWidth * 14/27.5;
  playdivY = appHeight * 3.5/4;
  playdivWidth = appWidth * 1/15;
  playdivHeight = appHeight * 1/10;
  //
  playsymbolX1 = playdivX + playdivWidth * 1/4;
  playsymbolY1 = playdivY + playdivHeight * 1/4;
  playsymbolX2 = playsymbolX1 + playdivWidth * 1/2;
  playsymbolY2 = playdivY + playdivHeight * 1/2;
  playsymbolX3 = playsymbolX1;
  playsymbolY3 = playdivY + playdivHeight * 3/4;
} //End DIV Population
void colourPopulation() {
  color black = 0; //Gray Scale, much smaller color, 256 bits
  color white = 255; //Gray Scale
  color grayScale = 256/2; //Example Gray Scale, small memory
  color gray = #B9B9B9; //Example Gray Scale, large memory
  //CANVAS= default background and ink
  resetBackgroundDay = white;
  resetInkDay = black;
  resetBackgroundNight = 256/4;
  resetInkNight = int(256*0.75); // 3/4 of origoinal, not 1/4
  //println("Casting answer is=", resetInkNight); //Exactly 192, no rounding invovled, checked on calculator
  //Button Colours= layering local variables leads to preferences controled by Booleans
color CreamGlow = #F2DECD;
color WarmHoney = #F2C57C;
color Amber = #E28B3A;
color SoftCaramel = #C46A2D;
color DarkHoney = #95732D;
  //
color NightCream = #EDC7A8;
color DeepHoney = #BC7841;
color DarkAmber = #9E4F1E;
color BurntCaramel = #7A3C1B;
color Molasses = #4A2A12;
  //Note= able to use a Ternary Operator but ineffiecient
   if (nightMode == true ) {
    resetBackground = DarkHoney;
    resetInk = CreamGlow;
    playColourBackground = SoftCaramel;
    playColourSymbol = CreamGlow;
    playColourBackgroundActivated = WarmHoney;
    playColourSymbolActivated = Amber;
    quitBackground = SoftCaramel;
    quitBackgroundActivated = WarmHoney;
    quitButtonInk = CreamGlow;
  } else {
    resetInk = CreamGlow;
    playColourBackground = BurntCaramel;
    playColourSymbol = NightCream;
    playColourBackgroundActivated = DarkAmber;
    playColourSymbolActivated = Molasses;
    quitBackground = BurntCaramel;
    quitBackgroundActivated = NightCream;
    quitButtonInk = CreamGlow;
  } //End Night Mode Colors
} //End Colour Population
//
// End Subprogram Population
