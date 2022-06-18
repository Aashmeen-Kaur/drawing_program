
void drawHelpPanel() {
  //grey overlay
  fill(grey);
  noStroke();
  rect(350, 150, 650,650);

  //Info for Brush Color
  fill(yellow);
  textSize(helpPanelFontSize);
  text("[1st Bar] = RBG", 360, 13 * helpPanelFontSize );
  text("[2nd Bar] = shades ", 360, 16 * helpPanelFontSize);
  text("[3rd Bar] = opasity", 360, 19 * helpPanelFontSize);
  text("Brush Size", 360, 22 *helpPanelFontSize);
  text("Gradient Background", 360, 25 *helpPanelFontSize);
  text("Fill background", 360, 28 *helpPanelFontSize);
  text("Clear background", 360, 29.2 *helpPanelFontSize);
  text("Random", 360, 30.4 *helpPanelFontSize);
  text("Save Frame", 360, 31.4 *helpPanelFontSize);
  text("Undo", 360, 33.2 *helpPanelFontSize);
  text("Save", 360, 36.5 *helpPanelFontSize);
  text("Pen", 360, 38.5 *helpPanelFontSize);
  text("Stamp", 360, 40.5 *helpPanelFontSize);
  text("Template", 360, 44 *helpPanelFontSize);
  text("Rewind", 360, 46 *helpPanelFontSize);
   text("Back", 360, 48 *helpPanelFontSize);
    text("Play/Stop", 360, 50 *helpPanelFontSize);
     text("Next", 360, 52.5 *helpPanelFontSize);
      text("Fastforward", 360, 54.5 *helpPanelFontSize);
       text("Loop", 360, 56.5 *helpPanelFontSize);
        
  
  fill(white);
  textSize(helpPanelFontSize);
  text("Is to pick a color for you brush or background ", 360, 14.5 * helpPanelFontSize);
    text("", 360, 15 * helpPanelFontSize);
  text("Is to use black, white, or grey. Since RGB bar doesn't have those", 360, 17.5 * helpPanelFontSize);
    text("", 360, 18 * helpPanelFontSize);
  text("is for you to set the oopacity of the colors", 360, 20.5 *helpPanelFontSize);
    text("", 360, 21 * helpPanelFontSize);
  text("Is to set the size of your brush", 360, 23.5 *helpPanelFontSize);
    text("", 360, 24 * helpPanelFontSize);
  text("After choosing you color click the button to make the background ombre (works better with keypress'g','G')", 360, 26.5 *helpPanelFontSize);
    text("", 360, 27 * helpPanelFontSize);
  text(": make the background the color of your choice", 455, 28 *helpPanelFontSize);
  text(": to start on a new canvas", 465, 29.2 *helpPanelFontSize);
  text(": Make the background or your pen color rainbow", 410, 30.4 *helpPanelFontSize);
   text("Save your drawing to canvas (Recommend saving everytime you make a change)", 360, 32.2 *helpPanelFontSize);
    text("Go to the last saved frame", 360, 34 *helpPanelFontSize);
    text("( If not working: try making a drawing then Save Frame> make your change > undo)", 360, 35 *helpPanelFontSize);
    text("To save you drawing to your pc/laptop", 360, 37.5 *helpPanelFontSize);
    text("Make your pen different shapes and to draw stright lines", 360, 39.5 *helpPanelFontSize);
    text("To add stamps to your drawing", 360, 42 *helpPanelFontSize);
    text("To apply stamp w/o pen set pen size to 1", 360, 43 *helpPanelFontSize);
    text("Like a coloring book", 360, 45 *helpPanelFontSize);
    text("To go back in song by 1000 milleseconds", 360, 47 *helpPanelFontSize);
    text("To go back to the last song", 360, 49 *helpPanelFontSize);
    text("Play and pause the music (Might lag if slow/bad internet)", 360, 51 *helpPanelFontSize);
    text("To go to the next song", 360, 53.5 *helpPanelFontSize);
    text("To go forward in music by 1000 milleseconds ", 360, 55.5 *helpPanelFontSize);
    text("Loop songs from 1-9. (click the 3 line then type a number to loop)", 360, 57.5 *helpPanelFontSize);
    //
    //
     fill(cyan);
    text("To go back draw a sqaure below and then press clear or 'c'. ", 600, 42 *helpPanelFontSize);
    text("If you have a drawing on the canvas and have saved the frame", 600, 44 *helpPanelFontSize);
    text("Then draw a square below and press undo or 'z'. ", 600, 45.5 *helpPanelFontSize);
}
//
//
//
//
//
void drawKeyHelpPanel() {
    //grey overlay
  fill(grey);
  noStroke();
  rect(350, 150, 650,650);

  //Info for Brush Color
  fill(yellow);
  textSize(helpPanelFontSize);
  text("Key= 'Q','q'", 360, 13 * helpPanelFontSize );
  text("Key= '?','/' ", 360, 16 * helpPanelFontSize);
  text("Key= 'k','K'", 360, 19 * helpPanelFontSize);
  text("Key= 's", 360, 22 *helpPanelFontSize);
  text("Key= 'S'", 360, 25 *helpPanelFontSize);
  text("Key= 'g','G'", 360, 28 *helpPanelFontSize);
  text("Key= 'f','F'", 360, 31 *helpPanelFontSize);
  text("Key= 'r','R'", 360, 34*helpPanelFontSize);
  text("Key= 'c','C'", 360, 37 *helpPanelFontSize);
  text("Key= 'x','X'", 360, 40 *helpPanelFontSize);
  text("Key= 'z','Z'", 360, 43 *helpPanelFontSize);
  text("Key= 'Space'", 360, 46 *helpPanelFontSize);
  text("Key= Number 1-9", 360, 49 *helpPanelFontSize);
  text("Key= 'i','I'", 360, 52 *helpPanelFontSize);
  text("Key= Right arrow", 360, 55 *helpPanelFontSize);
   text("Key= Left arrow", 360, 57.5 *helpPanelFontSize);
    text("Key= 'n','N'", 600, 13 *helpPanelFontSize);
  //   text("Next", 360, 51 *helpPanelFontSize);
  //    text("Fastforward", 360, 53*helpPanelFontSize);
  //     text("Loop", 360, 55 *helpPanelFontSize);
        
  
  fill(white);
  textSize(helpPanelFontSize);
  text(" Quit ", 360, 14.5 * helpPanelFontSize);
    text("", 360, 15 * helpPanelFontSize);
  text("Show help info", 360, 17.5 * helpPanelFontSize);
    text("", 360, 18 * helpPanelFontSize);
  text("Show key schortcuts", 360, 20.5 *helpPanelFontSize);
    text("", 360, 21 * helpPanelFontSize);
  text("Save who screen to file", 360, 23.5 *helpPanelFontSize);
    text("", 360, 24 * helpPanelFontSize);
  text("Save the canvas/drawing to file", 360, 26.5 *helpPanelFontSize);
    text("", 360, 27 * helpPanelFontSize);
  text("Make the background ombre", 360, 29.5 *helpPanelFontSize);
  text("", 360, 30 * helpPanelFontSize);
  text("Fill background color", 360, 32.5 *helpPanelFontSize);
  text("", 360, 33 * helpPanelFontSize);
  text("Turn rainbow/random button on", 360, 35.5 *helpPanelFontSize);
 text("", 360, 36 * helpPanelFontSize);
   text("Clear canvas", 360, 38.5 *helpPanelFontSize);
    text("", 360, 39 * helpPanelFontSize);
    text("Save current frame", 360, 41.5 *helpPanelFontSize);
 text("Revert to previous frame/undo", 360, 42 * helpPanelFontSize);
    text("", 360, 44.5 *helpPanelFontSize);
 text("", 360, 45 * helpPanelFontSize);
    text("Play/pause song(may lag if slow internet)", 360, 47.5 *helpPanelFontSize);
 text("", 360, 48 * helpPanelFontSize);
    text("Loop count", 360, 50.5 *helpPanelFontSize);
 text("", 360, 51 * helpPanelFontSize);
    text("Infinity loop", 360, 53.5 *helpPanelFontSize);
text("", 360, 54 * helpPanelFontSize);
    text("Fastforward song by 1000 milleseconds", 360, 56.5 *helpPanelFontSize);
text("", 360, 57 * helpPanelFontSize);
    text("rewind song by 1000 milleseconds", 360, 58.5 *helpPanelFontSize);
text("", 360, 60 * helpPanelFontSize);
    text("Choose next song randomly", 600, 14.5 *helpPanelFontSize);
    //
        fill(cyan);
    text("To go back draw a sqaure below and then press clear or 'c'. ", 600, 20 *helpPanelFontSize);
    text("If you have a drawing on the canvas and have saved the frame", 600, 22 *helpPanelFontSize);
    text("Then draw a square below and press undo or 'z'. ", 600, 23.5 *helpPanelFontSize);
}
