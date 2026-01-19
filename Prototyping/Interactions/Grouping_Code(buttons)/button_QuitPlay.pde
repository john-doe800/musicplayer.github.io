void setup() {
  size(500, 400);
  appWidth = width;
  appHeight = height;
  
  // Quit Button
  float QuitDivX = appWidth * 24/25;
  float QuitDivY = appHeight * 1/20;
  float QuitDivWidth = appWidth * 1/25;
  float QuitDivHeight = appHeight * 1/25;
  rect(QuitDivX, QuitDivY, QuitDivWidth, QuitDivHeight);

  // Play Button
  float PlayDivX = appWidth * 14/27.5;
  float PlayDivY = appHeight * 3.5/4;
  float PlayDivWidth = appWidth * 1/15;
  float PlayDivHeight = appHeight * 1/10;
  rect(PlayDivX, PlayDivY, PlayDivWidth, PlayDivHeight);

  // Draw play symbol inside Play Button
  triangle(playSymbolX1, playSymbolY1, playSymbolX2, playSymbolY2, playSymbolX3, playSymbolY3);

  // Initial colors
  nightMode = false;
  buildingColours();
}
void draw() {
  // Quit Button Hover
  if (mouseX > QuitDivX && mouseX < QuitDivX + QuitDivWidth &&
      mouseY > QuitDivY && mouseY < QuitDivY + QuitDivHeight) {
    quitButtonActive();
  } else {
    quitButtonRegular();
  }

  // Play Button Hover
  if (mouseX > PlayDivX && mouseX < PlayDivX + PlayDivWidth &&
      mouseY > PlayDivY && mouseY < PlayDivY + PlayDivHeight) {
    if (!playButton) playButtonActive();
  } else {
    playButtonReady();
    if (playButton) playButtonActive();
  }
}

void mousePressed() {
  // Quit button click
  if (mouseX > QuitDivX && mouseX < QuitDivX + QuitDivWidth &&
      mouseY > QuitDivY && mouseY < QuitDivY + QuitDivHeight) {
    quitButton();
  }

  // Play button click
  if (mouseX > PlayDivX && mouseX < PlayDivX + PlayDivWidth &&
      mouseY > PlayDivY && mouseY < PlayDivY + PlayDivHeight) {
    playButton = !playButton;
    if (playButton) println("Wahoo! I'm playing you");
    else println(" ");
  }
}

void keyPressed() {
  if (key == 'Q' || key == 'q') quitButton();
  if (key == 'D' || key == 'd') {
    nightModeVariables();
    colourPopulation();
  }
}

void quitButton() {
  noLoop();
  exit();
  println("Program exited");
}
