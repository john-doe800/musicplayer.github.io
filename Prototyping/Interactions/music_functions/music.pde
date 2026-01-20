/* Music Subprogram
*/
//
//Global Variables
Minim minim; //initates entire class
int numberOfSongs = 1; //Best Practice
int numberOfSoundEffects = 1; //Best Practice
AudioPlayer[] playList = new AudioPlayer[ numberOfSongs ];
AudioPlayer[] soundEffects = new AudioPlayer[ numberOfSoundEffects];
int currentSong = numberOfSongs - numberOfSongs; //ZERO, Math Property
//
 minim = new Minim(this); //Manditory
  String upArrow = "../../../";
  String music = "Music/"; 
  String SoundEffects = "Sound Effects/";  
  //
    String[] song = new String[numberOfSongs]
    song(0) = "Home";
    song(1) = "Undertale";
    song(2) = "Waterfall";
   //
  String soundEffect1 = "ClickSoundEffect2";
  String fileExtension_mp3 = ".mp3";
  //
  String musicDirectory = upArrow + musicFolder + normalFolder; //Concatenation
  String soundEffectsDirectory = upArrow + musicFolder + soundEffectsFolder;
  //
for (int i=0; i<numberOfSong; i++) {
    file = musicDirectory + songName[i] + fileExtension_mp3;
    playlist[ currentSong ] = minim.loadFile(file); 
    currentSong++;
} // End file Loading
currentSong=0;
file = soundEffectsDirectory + soundEffect1 + fileExtension_mp3;
soundEffects[currentSong] = minim.loadFile( file );
//
for ( int currentSong=0; i<numberOfSongs; i++) {
  //ERROR Check Music and Sound Effect Variables
  //Thrown by commenting out FILE, playList[] or soundEffects[]
  if ( playList[i]==null || soundEffects[currentSong]==null) { //ERROR, play list is NULL
    //See FILE or minim.loadFile
    println("The Play List or Sound Effects did not load properly");
    printArray(playList);
    printArray(soundEffects);
    /*
  println("Music Pathway", musicDirectory);
     println("Full Music File Pathway", file);
     */
  } //End ERROR Check Music and Sound Effect Variables
} //End File Loading
//






// End Music Subprogram

// End Music Subprogram
