void divPopulation() {
  qbX = appWidth * 24 / 25;
  qbY = appHeight * 0;
  qbWidth = appWidth * 1 / 25;
  qbHeight = appHeight * 1 / 25;

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

void colourPopulation() {
  // Warm color palette
  color CreamGlow = #F2DECD;
  color WarmHoney = #F2C57C;
  color Amber = #E28B3A;
  color SoftCaramel = #C46A2D;
  color DarkHoney = #95732D;

  if (nightMode == true) {
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
    resetBackground = CreamGlow;
    resetInk = DarkHoney;
    playColourBackground = Amber;
    playColourSymbol = DarkHoney;
    playColourBackgroundActivated = WarmHoney;
    playColourSymbolActivated = SoftCaramel;
    quitBackground = Amber;
    quitBackgroundActivated = WarmHoney;
    quitButtonInk = DarkHoney;
  }
}
