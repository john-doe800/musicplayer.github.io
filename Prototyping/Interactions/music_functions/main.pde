//Last Step to Organize
//Global Variables
int appWidth, appHeight;
float quitdivX, quitdivY, quitdivWidth, quitdivHeight;
float playdivX, playdivY, playdivWidth, playdivHeight;
float playSymbolX1, playSymbolY1, playSymbolX2, playSymbolY2, playSymbolX3, playSymbolY3;
float stringdivX, stringdivY, stringdivWidth, stringdivHeight;
//
Boolean playButton=false, quitButton=false;
//
color resetBackground, resetInk, resetBackgroundDay, resetInkDay, resetBackgroundNight, resetInkNight;
color quitButtonInk;
color playColourBackground, playColourSymbol, playColourBackgroundActivated, playColourSymbolActivated;
color quitBackground, quitBackgroundActivated;
color titleInk;
color ffBackground, ffSymbol;
color nextBackground, nextSymbol;
color prevBackground, prevSymbol;
color rewindBackground, rewindSymbol;
//
color ffBackgroundActivated, ffSymbolActivated;
color nextBackgroundActivated, nextSymbolActivated;
color prevBackgroundActivated, prevSymbolActivated;
color rewindBackgroundActivated, rewindSymbolActivated;

Boolean nightMode=false;
//
Minim minim; //initates entire class
int numberOfSongs = 3; //Best Practice
int numberOfSoundEffects = 1; //Best Practice
AudioPlayer[] playList = new AudioPlayer[ numberOfSongs ];
AudioPlayer[] soundEffects = new AudioPlayer[ numberOfSoundEffects];
int currentSong = numberOfSongs - numberOfSongs; //ZERO, Math Property
//
AudioMetaData[] playListMetaData = new AudioMetaData[ numberOfSongs ];
//
String songTitle;
float fontSize=0; //Able to set the First Font Size to AppHeight
PFont titleFont;
//
//End Global Variables
