import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;


Boolean draw = false, toolBarOn = false, toolBarReset = false, lineD=false, rectD=false, triD=false, eraserOn=false, ColourBOn=false, ColourBReset=false, BGbar=false, BGbarReset=false, exTemp=false, exTempReset=false;
float diameter;
int reset=1, intilSize=30, size;
float HorX, HorY, HorW, HorH, VerX, VerY, VerW, VerH;


//Music
//int numberOfSongs = 8;
int currentSong = numberOfSongs - numberOfSongs;
color purple=#2C08FF; 
PFont titleFont;
float MuBarX, MuBarY, MuBarW, MuBarH;
float NSX, NSY, LSX, LSY, PSX, PSY, MBBW, MBBH, LoopSX, LoopSY,NSW,NSH,FFX,RSX,FBW,FBH,FFY,OW,OH;
float hintLX, hintLY;
Boolean MBOn=false, MBreset=false, LoopI=false, LoopO=true;
PImage NextS, LastS, PlayS, PauseS, LoopS, OrderS;
//
void MusicBar()
{
  
    image(back,LSX,LSY,NSW,NSH);
    image(fastforward,FFX,FFY,FBW,FBH);
    image(rewind,RSX,FFY,FBW,FBH);
    
    if(song[currentSong].isPlaying()){
      fill(grey);
      //rect(PSX,PSY,MBBW,MBBH);
      image(pause,PSX,PSY,MBBW,MBBH);
    } else {
      fill(grey);
      //rect(PSX,PSY,MBBW,MBBH);
      image(play,PSX,PSY,MBBW,MBBH);}

    image(next,NSX,NSY,NSW,NSH);
    
    if(LoopO==true){
      fill(grey);
      //rect(LoopSX,LoopSY,MBBW,MBBH);
      image(order,LoopSX,LoopSY,OW,OH);
    } else {
      fill(grey);
      //rect(LoopSX,LoopSY,MBBW,MBBH);
      image(loop,LoopSX,LoopSY,MBBW,MBBH);}}
      
  
//
// Global Variables
//Music Text
String JukeBox="Juke Box";


//
void playlistArrayErrorN()
{
  if ( currentSong == numberOfSongs - 1 ) { //Throws error: ArrayIndexOutOfBounds
        currentSong = numberOfSongs - numberOfSongs;
      } else {
        currentSong++;
      }//End Catch "ArrayIndexOutOfBounds"
}
//
void playlistArrayErrorB()
{
  if ( currentSong == numberOfSongs - numberOfSongs ) { //Throws error: ArrayIndexOutOfBounds
        currentSong = numberOfSongs - 1;
      } else {
        currentSong--;
      }//End Catch "ArrayIndexOutOfBounds"
}
//
void MusicSetup()
{
  minim = new Minim(this); //load from data directroy, loadFile() should also load from project folder, like loadImage()
  song[currentSong] = minim.loadFile("music/Dollar - Sidhu Moose Wala.mp3"); //able to pass absolute paths, file name & extesnion, and URL
  song[currentSong+=1] = minim.loadFile("music/Raule.mp3");
  song[currentSong+=1] = minim.loadFile("music/So High.mp3");
  song[currentSong+=1] = minim.loadFile("music/Talja.mp3");
   song[currentSong+=1] = minim.loadFile("music/295 - Sidhu Moose Wala.mp3");
   song[currentSong+=1] = minim.loadFile("music/Ashke Ashke - Gur Sidhu.mp3");
   song[currentSong+=1] = minim.loadFile("music/Dekhi_Jau .mp3");
   song[currentSong+=1] = minim.loadFile("music/Titliaan.mp3");
  currentSong-=currentSong;
  for ( int i=currentSong; i<song.length; i++ ) {
    songMetaData[i] = song[i].getMetaData(); //reads song meta 1, like song 1, mimicing array notation
  }

  titleFont = createFont ("Harrington", 55); 
  //
  println( "Start of Console" );
  println( "Click the Console to Finish Starting this Program" ); 
  println( "Title", songMetaData[currentSong].title() ); 
  //
}
//
void MusicDraw()
{
  if ( song[currentSong].isLooping() && song[currentSong].loopCount()!=-1 ) println("There are", song[currentSong].loopCount(), "loops left.");
  if ( song[currentSong].isLooping() && song[currentSong].loopCount()==-1 ) println("Looping Infinitely");
  if ( song[currentSong].isPlaying() && !song[currentSong].isLooping() ) println("Play Once");
  //
  println("Current Song:", currentSong);
  println( "Song Position", song[currentSong].position(), "Song Length", song[currentSong].length() );
  //
  //
  textFont(font, 20);
  String[] Info = new String[3];
  Info[0] = songMetaData[currentSong].title();
  Info[1] = String.valueOf(song[currentSong].length()/1000);
  Info[2] = String.valueOf(song[currentSong].position()/1000);
  String INFO = join(Info, " / "); 
  
  //rect(width*1/4, height*0, width*1/2, height*1/10);
  fill(black);
  text( INFO, width*2/5, height*1/60, width*1/2, height*1/10);
  //
}
//
void MusicButton()
{
if( key==' '){
    if ( song[currentSong].isPlaying() ) { 
      song[currentSong].pause();
    } 
    else { 
      if(LoopI==true){
      song[currentSong].loop(); }
      else {
      song[currentSong].play();
    if(song[currentSong].isPlaying()){ song[currentSong].pause();song[currentSong].play();}}
  }}
  //
  //Another Play Button, as a finite loop() && infinite loop()
  //Only press a number for this code below
  println(key);
  if ( key=='1' || key=='2' || key=='3'|| key=='4'|| key=='5'|| key=='6'|| key=='7'|| key=='8'|| key=='9') {
    //Note: "9" is assumed to be massive! "Simulate Infinite"
    if ( key=='1' ) println("Looping Once");
    if ( key=='2' ) println("Looping Once");
    if ( key=='3' ) println("Looping Once");
    if ( key=='4' ) println("Looping Once");
    if ( key=='5' ) println("Looping Once");
    if ( key=='6' ) println("Looping Once");
    if ( key=='7' ) println("Looping Once");
    if ( key=='8' ) println("Looping Once");
    if ( key=='9' ) println("Looping 9 times."); //Simulate Infinity
    String keystr = String.valueOf(key); //Must press a number
    println("Number of Repeats is", keystr); 
    int loopNum = int(keystr); //Local Variable plays once and loops loopNum of times
    song[currentSong].loop(loopNum); //Parameter is number of loops
    // if ( key=='l' || key=='L' ) song1.loop(loopNum); //Parameter is number of loops
  }
  if ( key=='i' || key=='I' ) song[currentSong].loop(); //Infinite Loop, no parameter OR -1
  if ( key>='2' && key!='9' ) println("Unable to loop that much, press infinite loop.");

  //
  //Built-in question: .isPlaying()
  if ( key==CODED ){if(keyCode==RIGHT){song[currentSong].skip( 1000 );}}  //Skip forward 1 second (1000 milliseconds)
  if ( key==CODED ){if(keyCode==LEFT){song[currentSong].skip( -1000 );}} //Skip backwards 1 second (1000 milliseconds)
  //
   if(key=='n' || key=='N') {
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
      song[currentSong].rewind();
      playlistArrayErrorN();
      song[currentSong].play();
    } else {
      song[currentSong].rewind();
      playlistArrayErrorN();
      song[currentSong].play();}
    }
  //
  if ( key=='b' || key=='B' ){
  if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
      song[currentSong].rewind();
      playlistArrayErrorB();
      song[currentSong].play();
    } else {
      song[currentSong].rewind();
      playlistArrayErrorB();
      song[currentSong].play();
    }
  }
}

// 
void populationm()
{

  HorX = width/4;
  HorY = 0;
  HorW = width;
  HorH = height/10;
  VerX = width/4-54;
  VerY = 0;
  VerW = 54;
  VerH = height;
  //
  MuBarX = 0;
  MuBarY = height*5/10+20;
  MuBarW = width/16;
  MuBarH = height/10;
  //
  LSX = width/2+50;
  LSY = height*5/75;
  MBBW = width/18;
  MBBH = height/20;
  //
   PSX = width*3/5;
  PSY =  height*1/15;
  //
  FFX=width/2+210;
  FFY= height*5/125;
  RSX=width/2-50;
  FBW=width/10;
  FBH=height/10;
  //
  NSX = width/2+175;
  NSY = LSY;
  NSW = width/30;
  NSH = height/20;
  //
  LoopSX = width/2+325;
  LoopSY = LSY;
  OW= width/20;
  OH= height/20;
}
//
void MBPress()
{
  if(MBOn == false) {MBOn=true;MBreset=false;println("On");} else {MBOn=false;MBreset=true;println("Off");}
  if(mouseX>=LSX && mouseX<=LSX+MBBW && mouseY>=LSY && mouseY<=LSY+MBBH && MBOn == true)
  {
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
      song[currentSong].rewind();
      playlistArrayErrorB();
      song[currentSong].play();
    } else {
      song[currentSong].rewind();
      playlistArrayErrorB();
      song[currentSong].play();}};

  if(mouseX>=PSX && mouseX<=PSX+MBBW && mouseY>=PSY && mouseY<=PSY+MBBH && MBOn == true){
    if ( song[currentSong].isPlaying() ) { 
      song[currentSong].pause();
    } else { 
      if(LoopI==true){
      song[currentSong].loop();
      } else {
      song[currentSong].play();if(song[currentSong].position()>= song[currentSong].length()-2 ){playlistArrayErrorN();song[currentSong].play();}}}} 
 
  if(mouseX>=NSX && mouseX<=NSX+MBBW && mouseY>=NSY && mouseY<=NSY+MBBH && MBOn == true){
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
      song[currentSong].rewind();
      playlistArrayErrorN();
      song[currentSong].play();
    } else {
      song[currentSong].rewind();
      playlistArrayErrorN();
      song[currentSong].play();}}
      
  if(mouseX>=LoopSX && mouseX<=LoopSX+MBBW && mouseY>=LoopSY && mouseY<=LoopSY+MBBH && MBOn == true){
    if(LoopI==false){LoopI=true;LoopO=false;} else {LoopI=false;LoopO=true;}}
    
      if ( mouseX>=FFX && mouseX<=FFX+FBW && mouseY>=FFY && mouseY<=FFY+FBH && MBOn == true){song[currentSong].skip( 1000 );}
  if ( mouseX>=RSX && mouseX<=RSX+FBW && mouseY>=FFY && mouseY<=FFY+FBH && MBOn == true){song[currentSong].skip( -1000 );}
}
