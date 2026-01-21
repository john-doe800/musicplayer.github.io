/* Population
 - divPopulation
 - colourPopulation(), Colour Population
 - TBA
 */
//
void divPopulation() {
  quitDivX = appWidth * 24/25;
  quitDivY = appHeight * 0;
  quitDivWidth = appWidth * 1/25;
  quitDivHeight = appHeight * 1/25;
  //
  playDivX = appWidth * 14/27.5;
  playDivY = appHeight * 3.5/4;
  playDivWidth = appWidth * 1/15;
  playDivHeight = appHeight * 1/10;
  //
  playSymbolX1 = playDivX + playDivWidth * 1/4;
  playSymbolY1 = playDivY + playDivHeight * 1/4;
  playSymbolX2 = playSymbolX1 + playDivWidth * 1/2;
  playSymbolY2 = playDivY + playDivHeight * 1/2;
  playSymbolX3 = playSymbolX1;
  playSymbolY3 = playDivY + playDivHeight * 3/4;
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
color CreamGlow = #FFF4E6;
color WarmHoney = #F2C57C;
color Amber = #E28B3A;
color SoftCaramel = #C46A2D;
color DarkHoney = #95732D;
  //
color NightCream = #2B1F14;
color DeepHoney = #8F6A2A;
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
    resetBackground = CoolMoonlight;
    resetInk = DeepCharcoal;
    playColourBackground = FrostedStone;
    playColourSymbol = DeepCharcoal;
    playColourBackgroundActivated = MutedSteelBlue;
    playColourSymbolActivated = CoolMoonlight;
    quitBackground = FrostedStone;
    quitBackgroundActivated = MutedSteelBlue;
    quitButtonInk = CoolMoonlight;
  } //End Night Mode Colors
} //End Colour Population
//
// End Subprogram Population
