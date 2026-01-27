void metaDataFileLoading() { //See Music / FOR / playList[ currentSong ] = minim.loadFile( file )
  playListMetaData[ currentSong ] = playList[ currentSong ].getMetaData();
} //End Meta Data File Loading
//
void testMetaData() {
  //Print What is available on a particular song
  //See Image / Properties / Details
  println();
  println( "File Name: " + playListMetaData[currentSong].fileName() );
  println( "Length (in milliseconds): " + playListMetaData[currentSong].length() );
  println( "Length (in seconds): " + ( playListMetaData[currentSong].length() )/1000 );
  println( "Title: " + playListMetaData[currentSong].title() );
  println( "Author: " + playListMetaData[currentSong].author() );
  println( "Album: " + playListMetaData[currentSong].album() );
  println( "Date: " + playListMetaData[currentSong].date() );
  println( "Comment: " + playListMetaData[currentSong].comment() );
  println( "Lyrics: " + playListMetaData[currentSong].lyrics() );
  println( "Track: " + playListMetaData[currentSong].track() );
  println( "Genre: " + playListMetaData[currentSong].genre() );
  println( "Copyright: " + playListMetaData[currentSong].copyright() );
  println( "Disc: " + playListMetaData[currentSong].disc() );
  println( "Composer: " + playListMetaData[currentSong].composer() );
  println( "Orchestra: " + playListMetaData[currentSong].orchestra() );
  println( "Publisher: " + playListMetaData[currentSong].publisher() );
  println( "Encoded: " + playListMetaData[currentSong].encoded() );
} //End Test Meta Data
//
void saveSongTitle() {
  //See draw()
  //Note: See Music Loading if NULL
  if ( playList[currentSong].isPlaying() == true) {
    titlediv();
    songTitle = playListMetaData[currentSong].title(); //Used to switch titles in draw()
    //println("Check VAR currentSongFileName", currentSongFileName);
  } else {
    titlediv();
    songTitle = "Nothing Playing Yet!";
  }
} //End Print Song Title in draw()
//End Subprogram Music Meta Data
