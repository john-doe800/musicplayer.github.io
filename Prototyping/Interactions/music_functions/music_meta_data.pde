void metaDataFileLoading() {
  if (playList[currentSong] != null) {
    playListMetaData[currentSong] = playList[currentSong].getMetaData();
  }
}

void testMetaData() {
  if (playListMetaData[currentSong] == null) {
    println("⚠ No metadata available");
    return;
  }
  
  println();
  println("File Name:", playListMetaData[currentSong].fileName());
  println("Length (ms):", playListMetaData[currentSong].length());
  println("Title:", playListMetaData[currentSong].title());
  println("Author:", playListMetaData[currentSong].author());
  println("Album:", playListMetaData[currentSong].album());
  println("Genre:", playListMetaData[currentSong].genre());
  println("Composer:", playListMetaData[currentSong].composer());
}

void saveSongTitle() {
  if (playList[currentSong] != null &&
      playListMetaData[currentSong] != null &&
      playList[currentSong].isPlaying()) {
    songTitle = playListMetaData[currentSong].title();
  } else {
    songTitle = "Nothing Playing Yet!";
  }
}
