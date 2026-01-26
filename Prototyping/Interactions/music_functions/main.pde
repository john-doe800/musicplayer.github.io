void musicFunctionsKeyPressed() {
  if (key == 'P' || key == 'p') {
    playList[currentSong].loop(0); // Play song
    saveSongTitle(); // Save the current song title
  }
  if (key == 'O' || key == 'o') { // Pause/Resume
    if (playList[currentSong].isPlaying()) {
      playList[currentSong].pause();
    } else {
      playList[currentSong].play();
    }
  }
  if (key == 'S' || key == 's') { // Stop/Rewind
    if (playList[currentSong].isPlaying()) {
      playList[currentSong].pause();
    }
    playList[currentSong].rewind();
  }
  if (key == 'L' || key == 'l') playList[currentSong].loop(1); // Loop once
  if (key == 'K' || key == 'k') playList[currentSong].loop(); // Loop infinitely
  if (key == 'F' || key == 'f') playList[currentSong].skip(10000); // Fast forward
  if (key == 'R' || key == 'r') playList[currentSong].skip(-10000); // Fast rewind
  if (key == 'W' || key == 'w') { // Mute/Unmute
    if (playList[currentSong].isMuted()) {
      playList[currentSong].unmute();
    } else {
      playList[currentSong].mute();
    }
  }
  if (key == 'N' || key == 'n') { // Next song
    playList[currentSong].pause(); // Stop current song
    playList[currentSong].rewind(); // Rewind current song
    currentSong = (currentSong + 1) % numberOfSongs; // Move to next song
    playList[currentSong].play(); // Play next song
    saveSongTitle(); // Save the current song title
  }
  if (key == 'Y' || key == 'y') { // Random song
    playList[currentSong].pause(); // Stop current song
    playList[currentSong].rewind(); // Rewind current song
    currentSong = int(random(numberOfSongs)); // Select random song
    playList[currentSong].play(); // Play random song
    saveSongTitle(); // Save the current song title
  }
  if (key == 'E' || key == 'e') { // Play sound effect
    if (soundEffectList[0] != null) {
      soundEffectList[0].rewind();
      soundEffectList[0].play();
    } else {
      println("Error: Sound effect not loaded.");
    }
  }
  if (key == CODED && keyCode == ESC) exit(); // Quit
}
