void divPopulation() {

  // quit button
  quitdivX = appWidth * 24 / 25;
  quitdivY = appHeight * 0;
  quitdivWidth = appWidth * 1 / 25;
  quitdivHeight = appHeight * 1 / 25;


  // play button
  playdivX = appWidth * 14 / 27.5;
  playdivY = appHeight * 3.5 / 4;
  playdivWidth = appWidth * 1 / 15;
  playdivHeight = appHeight * 1 / 10;


  // Ff button
  ffdivX = playdivX + playdivWidth + appWidth * 0.008;
  ffdivY = playdivY;
  ffdivWidth = playdivWidth;
  ffdivHeight = playdivHeight;


  // next button
  nextdivX = ffdivX + ffdivWidth + appWidth * 0.008;
  nextdivY = playdivY;
  nextdivWidth = playdivWidth;
  nextdivHeight = playdivHeight;


  // previous button
  prevdivX = playdivX - playdivWidth - appWidth * 0.008;
  prevdivY = playdivY;
  prevdivWidth = playdivWidth;
  prevdivHeight = playdivHeight;


  // rewind button
  rewinddivX = prevdivX - playdivWidth - appWidth * 0.008;
  rewinddivY = playdivY;
  rewinddivWidth = playdivWidth;
  rewinddivHeight = playdivHeight;


  // Play symbol 
  playsymbolX1 = playdivX + playdivWidth * 1 / 4;
  playsymbolY1 = playdivY + playdivHeight * 1 / 4;
  playsymbolX2 = playsymbolX1 + playdivWidth * 1 / 2;
  playsymbolY2 = playdivY + playdivHeight * 1 / 2;
  playsymbolX3 = playsymbolX1;
  playsymbolY3 = playdivY + playdivHeight * 3 / 4;


  // TITLE bar
  stringdivX = appWidth * 70 / 279;
  stringdivY = appHeight * 22 / 216;
  stringdivWidth = appWidth * 140 / 279;
  stringdivHeight = appHeight * 22 / 216;

void colourPopulation() {
  // warm color palette
  color CreamGlow = #F2DECD;
  color WarmHoney = #F2C57C;
  color Amber = #E28B3A;
  color SoftCaramel = #C46A2D;
  color DarkHoney = #95732D;

  if (nightMode == true) {

    resetBackground = DarkHoney;
    resetInk = CreamGlow;

    // play
    playColourBackground = SoftCaramel;
    playColourSymbol = CreamGlow;
    playColourBackgroundActivated = WarmHoney;
    playColourSymbolActivated = Amber;

    // quit
    quitBackground = SoftCaramel;
    quitBackgroundActivated = WarmHoney;
    quitButtonInk = CreamGlow;

    // rewind
    rewindBackground = SoftCaramel;
    rewindSymbol = CreamGlow;
    rewindBackgroundActivated = WarmHoney;
    rewindSymbolActivated = Amber;

    // previous
    prevBackground = SoftCaramel;
    prevSymbol = CreamGlow;
    prevBackgroundActivated = WarmHoney;
    prevSymbolActivated = Amber;

    // next
    nextBackground = SoftCaramel;
    nextSymbol = CreamGlow;
    nextBackgroundActivated = WarmHoney;
    nextSymbolActivated = Amber;

    // fast forward
    ffBackground = SoftCaramel;
    ffSymbol = CreamGlow;
    ffBackgroundActivated = WarmHoney;
    ffSymbolActivated = Amber;

  } else {

    resetBackground = CreamGlow;
    resetInk = DarkHoney;

    // play
    playColourBackground = Amber;
    playColourSymbol = DarkHoney;
    playColourBackgroundActivated = WarmHoney;
    playColourSymbolActivated = SoftCaramel;

    // quit
    quitBackground = Amber;
    quitBackgroundActivated = WarmHoney;
    quitButtonInk = DarkHoney;

    // rewind
    rewindBackground = Amber;
    rewindSymbol = DarkHoney;
    rewindBackgroundActivated = WarmHoney;
    rewindSymbolActivated = SoftCaramel;

    // previous
    prevBackground = Amber;
    prevSymbol = DarkHoney;
    prevBackgroundActivated = WarmHoney;
    prevSymbolActivated = SoftCaramel;

    // next
    nextBackground = Amber;
    nextSymbol = DarkHoney;
    nextBackgroundActivated = WarmHoney;
    nextSymbolActivated = SoftCaramel;

    // fast forward
    ffBackground = Amber;
    ffSymbol = DarkHoney;
    ffBackgroundActivated = WarmHoney;
    ffSymbolActivated = SoftCaramel;
  }
} // End divPopulation
