int numberOfSongs = 3;
int numberOfSoundEffects = 1;

AudioPlayer[] playList = new AudioPlayer[numberOfSongs];
AudioMetaData[] playListMetaData = new AudioMetaData[numberOfSongs];
AudioPlayer[] soundEffectList = new AudioPlayer[numberOfSoundEffects];

int currentSong = 0;

// -----------------------------
// Music Setup Function
// -----------------------------
void musicSetup() {
  minim = new Minim(this); // Mandatory for Minim

  String upArrow = "../../../";
  String musicFolder = "Music/";
  String soundEffectsFolder = "Sound Effects/";
  String fileExtension = ".mp3";

  // Song names
  String[] songName = { "Home", "Undertale", "Waterfall" };

  // Load songs into playlist
  for (int i = 0; i < numberOfSongs; i++) {
    String file = upArrow + musicFolder + songName[i] + fileExtension;
    playList[i] = minim.loadFile(file);

    if (playList[i] != null) {
      playListMetaData[i] = playList[i].getMetaData();
      println("Loaded song: " + songName[i]);
    } else {
      println("Error loading song: " + file);
    }
  }

  // Load sound effect
  String fxFile = upArrow + soundEffectsFolder + "ClickSoundEffect2" + fileExtension;
  soundEffectList[0] = minim.loadFile(fxFile);

  if (soundEffectList[0] == null) {
    println("Error loading sound effect: " + fxFile);
  }

  // Check playlist for errors
  for (int i = 0; i < numberOfSongs; i++) {
    if (playList[i] == null) {
      println("Playlist did not load properly.");
      printArray(playList);
    }
  }

  if (soundEffectList[0] == null) {
    println("Sound effect did not load properly.");
    printArray(soundEffectList);
  }
}

// -----------------------------
// Music Key Press Functions
// -----------------------------
void musicFunctionsKeyPressed() {
  if (key == 'P' || key == 'p') playList[currentSong].loop(0); // Play song
  if (key == 'O' || key == 'o') { // Pause/Resume
    if (playList[currentSong].isPlaying()) playList[currentSong].pause();
    else playList[currentSong].play();
  }
  if (key == 'S' || key == 's') { // Stop/rewind
    if (playList[currentSong].isPlaying()) playList[currentSong].pause();
    else playList[currentSong].rewind();
  }
  if (key == 'L' || key == 'l') playList[currentSong].loop(1); // Loop once
  if (key == 'K' || key == 'k') playList[currentSong].loop(); // Loop infinitely
  if (key == 'F' || key == 'f') playList[currentSong].skip(10000); // Fast forward
  if (key == 'R' || key == 'r') playList[currentSong].skip(-10000); // Fast rewind
  if (key == 'W' || key == 'w') { // Mute/Unmute
    if (playList[currentSong].isMuted()) playList[currentSong].unmute();
    else playList[currentSong].mute();
  }
  if (key == 'N' || key == 'n') { // Next song
    playList[currentSong].rewind();
    currentSong = (currentSong + 1) % numberOfSongs;
    playList[currentSong].play();
  }
  if (key == 'Y' || key == 'y') { // Random song
    currentSong = int(random(numberOfSongs));
  }
  if (key == CODED && keyCode == ESC) exit(); // Quit
}
