Minim minim;

int numberOfSongs = 8;

AudioPlayer[] song = new AudioPlayer[numberOfSongs]; //creates a "Play List" variable holding extesions ...
AudioMetaData[] songMetaData = new AudioMetaData[numberOfSongs];

void setup() {
  size(1024, 766);
  drawHelpPanel();
  drawKeyHelpPanel();
  screen();
  population ();
  populationm();
  MusicSetup();

}
void draw() {
  background ();
  drawpanel();
  events (); 
  keys();
  quitbutton();
  image(ikey, 992,80,30,30);
  MusicBar();
  MusicDraw();
  tpButDraw ();
  stampDraw ();
  penDraw ();

}
//Execute whenever a mouse button is pressed
void mousePressed() {
  penMP ();
  quitButMP ();
  MBPress();
  tpMP ();
  saveB();
  undo();
  saveframe();
  stampMP ();
  help();
  if (mouseX > 0 && mouseX < width && mouseY > 0 && mouseY < height) {
    if (drawLine) { //Draw Line
      lineFirstX = mouseX;
      lineFirstY = mouseY;
    }
  }
  }


//Execute whenever a mouse button is released
void mouseReleased() {
  if (mouseX > 0 && mouseX < width && mouseY > 0 && mouseY < height) {
    if (drawLine) { //Draw Line
      if (randomColor) {
        stroke(random(0, 100), 100, 100, brushColorAlp);
      } else {
        stroke(brushColor);
      }
      strokeWeight(brushSize);
      line(lineFirstX, lineFirstY, mouseX, mouseY);
    }
  }
}
