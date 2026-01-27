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

} // End divPopulation
