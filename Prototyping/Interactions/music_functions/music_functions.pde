import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

// Global Variables
Minim minim;
int numberOfSongs = 3;
int numberOfSoundEffects = 1;

AudioPlayer[] playList = new AudioPlayer[numberOfSongs];
AudioMetaData[] playListMetaData = new AudioMetaData[numberOfSongs];
AudioPlayer[] soundEffectList = new AudioPlayer[numberOfSoundEffects];

int currentSong = 0;
String songTitle = "Nothing Playing Yet!";

void setup() {
  size(800, 600); // Set canvas size
  minim = new Minim(this); // Initialize Minim
  musicSetup(); // Call the music setup function
}

void draw() {
  background(50); // Set background color
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(20);
  text("Press P to Play, N for Next, S to Stop, Y for Random", width / 2, height / 2 - 50);
  text("Current Song: " + songTitle, width / 2, height / 2);
}

void keyPressed() {
  musicFunctionsKeyPressed(); // Handle music key presses
}
