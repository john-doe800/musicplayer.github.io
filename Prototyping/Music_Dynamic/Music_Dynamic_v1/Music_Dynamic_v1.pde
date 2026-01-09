// Hearing Music and Sound Effects
//
/* Program Documentation & Notes
 - Libraries add specific functions to ease programming burdon
 - Must add some libraries in the IDE and the code, like Minim
 - Global Varaibles on harddrive used throuhgout the program sections
 
 - Folder Name matches first-tab or MAIN Program
 - setup() executes once, sets up all libraries & variables (and objects at the advanced level)
 - draw() maniuplates variables and how CANVAS looks
 - mousePressed() and keyPressed() are example listeners, interrupts draw(), then continues draw() at that line
 
 - Once setup() is done, draw() starts looping
 - Can temporarily pause draw() with noLoop() & loop() to wait (behind booleans or interactions)
 - Note: delay() will stop the program for a specified time
 
 - Reading Code the cursor & braces
 -global varisble v local variable, garbage collection
 
 */
//
//Library - Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
Minim minim; //initates entire class
int numberOfSongs = 1; //Best Practice
int numberOfSoundEffects = 1; //Best Practice
AudioPlayer[] playList = new AudioPlayer[ numberOfSongs ];
AudioPlayer[] soundEffects = new AudioPlayer[ numberOfSoundEffects];
int currentSong = numberOfSongs - numberOfSongs; //ZERO, Math Property
//
void setup() { //End setup 
  size(700, 500); //width //height
  //fullScreen(); //displayWidth //displayHeight
  int appWidth = width; //Best Practice
  int appHeight = height;}
//Music Loading - STRUCTURED Review
minim = new Minim(this); 
String upArrow = "../../";
String musicFolder = "Music/"; //Developer Specific
String soundEffectsFolder = "Sound_Effects/"; //Developer Specific
String songName1 = "Home";
String soundEffect1 = "ClickSoundEffect2";
String fileExtension_mp3 = ".mp3";
//
String musicDirectory = upArrow + musicFolder; //Concatenation
String soundEffectsDirectory = upArrow + musicFolder + soundEffectsFolder; //Concatenation
String file = musicDirectory + songName1 + fileExtension_mp3; //TO BE Rewritten and deleted once file is LOADED
playList[ currentSong ] = minim.loadFile( file ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
file = soundEffectsDirectory + soundEffect1 + fileExtension_mp3; //Rewritting FILE
soundEffects[currentSong] = minim.loadFile( file ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
//
//ERROR Check Music and Sound Effect Variables
//Thrown by commenting out FILE, playList[] or soundEffects[]
if ( playList[currentSong]==null || soundEffects[currentSong]==null) { //ERROR, play list is NULL
  //See FILE or minim.loadFile
  println("The Play List or Sound Effects did not load properly");
  printArray(playList);
  printArray(soundEffects);
  
  println("Music Pathway", musicDirectory);
  println("Full Music File Pathway", file);
  soundEffects

//
void draw() {} //End draw
//
void mousePressed() {} //End Mouse Pressed
//
void keyPressed() {} //End Key Pressed
//
//End MAIN Program
