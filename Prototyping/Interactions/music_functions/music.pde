/* Music Subprogram
 */
//
// Global Variables
import ddf.minim.*; // Import Minim library
Minim minim; // Initiates entire class
int numberOfSongs = 8; // Best Practice
int numberOfSoundEffects = 1; // Best Practice
AudioPlayer[] playList = new AudioPlayer[numberOfSongs];
AudioPlayer[] soundEffectList = new AudioPlayer[numberOfSoundEffects]; // Renamed to avoid conflict
int currentSong = 0; // Start at the first song

void musicSetup() {
  // Music Loading - STRUCTURED Review
  minim = new Minim(this); // Mandatory
  String upArrow = "../../../";
  String music = "Music/";
  String soundEffectsFolder = "Sound Effects/"; // Renamed to avoid conflict
  //
  String[] song = new String[numberOfSongs];
  song[0] = "Home";
  song[1] = "Undertale";
  song[2] = "Waterfall";
  // Add more songs as needed
  //
  String soundEffect1 = "ClickSoundEffect2";
  String fileExtension_mp3 = ".mp3";
  //
  String musicDirectory = upArrow + music; // Concatenation
  String soundEffectsDirectory = upArrow + soundEffectsFolder;

  // Load songs into playList
  for (int i = 0; i < numberOfSongs; i++) {
    String file = musicDirectory + song[i] + fileExtension_mp3; // Corrected variable name
    playList[i] = minim.loadFile(file); // Load each song into the playlist
    if (playList[i] == null) {
      println("Error loading song: " + file);
    }
  }

  // Load sound effects
  String file = soundEffectsDirectory + soundEffect1 + fileExtension_mp3; // Rewriting FILE
  soundEffectList[0] = minim.loadFile(file); // Load sound effect
  if (soundEffectList[0] == null) {
    println("Error loading sound effect: " + file);
  }

  // Error Check Music and Sound Effect Variables
  for (int i = 0; i < numberOfSongs; i++) {
    if (playList[i] == null) { // Check if any song failed to load
      println("The Play List did not load properly");
      printArray(playList);
    }
  }

  if (soundEffectList[0] == null) { // Check if sound effect failed to load
    println("The Sound Effects did not load properly");
    printArray(soundEffectList);
  }
}
