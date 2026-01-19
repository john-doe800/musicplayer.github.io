void colourPopulation() {
  buildingColours(); // ONLY update colors
} // End Colour Population
//

void nightModeVariables() {
  nightMode = !nightMode; // toggle night mode
} // End Night Mode Variables
//

void buildingColours() {
  color black = 0;
  color white = 255;

  // CANVAS
  resetBackgroundDay = white;
  resetInkDay = black;
  resetBackgroundNight = 256/4;
  resetInkNight = int(256*0.75);

  // Your palette
  color SoftCream = #F5EFE6;
  color HoneyBeige = #D8C3A5;
  color TerracottaClay = #C46A4A;
  color MutedOlive = #8A8F5A;
  color WarmWalnutBrown = #5A3E2B;

  if (nightMode) {
    resetBackground = WarmWalnutBrown;
    resetInk = SoftCream;
    playColourBackground = MutedOlive;
    playColourSymbol = SoftCream;
    playColourBackgroundActivated = TerracottaClay;
    playColourSymbolActivated = SoftCream;
    quitBackground = MutedOlive;
    quitBackgroundActivated = TerracottaClay;
    quitButtonInk = SoftCream;
  } else {
    resetBackground = SoftCream;
    resetInk = WarmWalnutBrown;
    playColourBackground = HoneyBeige;
    playColourSymbol = WarmWalnutBrown;
    playColourBackgroundActivated = TerracottaClay;
    playColourSymbolActivated = SoftCream;
    quitBackground = HoneyBeige;
    quitBackgroundActivated = TerracottaClay;
    quitButtonInk = SoftCream;
  }
} // End Building Colours
