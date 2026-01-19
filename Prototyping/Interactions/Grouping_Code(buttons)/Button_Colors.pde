/* List of Buttons and Code Colours
 - Quit
 - Play, Boolean Only
 */

void quitButtonActive() {
  fill(quitBackgroundActivated); // TerracottaClay for active
  rect(quitDivX, quitDivY, quitDivWidth, quitDivHeight);
  
  fill(resetBackground);
  fill(quitButtonInk); // SoftCream or WarmWalnutBrown depending on mode
  // Note: rect() starts top-right corner, text() starts bottom-right corner
  text("X", quitDivX + quitDivWidth * 1/2, quitDivY + quitDivHeight * 3/5); // adjust fractions if needed
  
  fill(resetInk);
} // End Quit Button Active
//

void quitButtonRegular() {
  fill(quitBackground); // HoneyBeige or MutedOlive depending on mode
  rect(quitDivX, quitDivY, quitDivWidth, quitDivHeight);
  
  fill(resetBackground);
  fill(quitButtonInk); // SoftCream or WarmWalnutBrown depending on mode
  // Note: rect() starts top-right corner, text() starts bottom-right corner
  text("X", quitDivX
