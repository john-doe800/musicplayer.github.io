void quitButton() {
  noLoop();
  exit();
  println("Exiting program");
}

void DIVs() {
  qb();
  playdiv();
  nextdiv();
}

void qb() {
  rect(qbX, qbY, qbWidth, qbHeight);
}

void playdiv() {
  rect(playdivX, playdivY, playdivWidth, playdivHeight);
}

void nextdiv() {
  rect(nextdivX, nextdivY, nextdivWidth, nextdivHeight);
}

void playButtonSymbol() {
  triangle(playsymbolX1, playsymbolY1, playsymbolX2, playsymbolY2, playsymbolX3, playsymbolY3);
}

void musicButtonShapes() {
  playButtonSymbol();
}

void quitButtonActive() {
  fill(quitBackgroundActivated);
  qb();
  fill(resetBackground);
  fill(quitButtonInk);
  easyTextQuitButton();
  fill(resetInk);
}

void quitButtonRegular() {
  fill(quitBackground);
  qb();
  fill(resetBackground);
  fill(quitButtonInk);
  easyTextQuitButton();
  fill(resetInk);
}

void playButtonActive() {
  fill(playColourBackgroundActivated);
  playdiv();
  fill(playColourSymbolActivated);
  playButtonSymbol();
  fill(resetBackground);
}

void playButtonReady() {
  fill(playColourBackground);
  playdiv();
  fill(playColourSymbol);
  playButtonSymbol();
  fill(resetBackground);
}

void hoverOver_draw() {
  // Quit button hover
  if (mouseX > qbX && mouseX < qbX + qbWidth && mouseY > qbY && mouseY < qbY + qbHeight) {
    quitButtonActive();
  } else {
    quitButtonRegular();
  }

  // Play button hover
  if (mouseX > playdivX && mouseX < playdivX + playdivWidth &&
      mouseY > playdivY && mouse
      )
