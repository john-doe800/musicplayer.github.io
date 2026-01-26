void easyTextQuitButton() {
  text("X", qbX + qbWidth/2, qbY + qbHeight/2);
}

void textSetup() {
  fontSize = stringDivHeight;
  String font = "8bitoperator-JVE-48";
  titleFont = createFont(font, fontSize);

  float fontSizefont = 83.0;
  float fontAspectRatio = fontSizefont / stringDivHeight;
  fontSize = stringDivHeight * fontAspectRatio;
}

void textdraw() {
  textFont(titleFont, fontSize);
  float constantDecrease = 0.99;
  int iWhile = 0;
  while (textWidth(playListMetaData[currentSong].title()) > stringDivWidth) {
    iWhile++;
    fontSize *= constantDecrease;
    textFont(titleFont, fontSize);
  }
}

void songTitle() {
  textAlign(CENTER, CENTER);
  fill(titleInk);
  text(songTitle, stringDivX, stringDivY, stringDivWidth, stringDivHeight);
  fill(resetInk);
}
