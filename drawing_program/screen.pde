//Initialize Screen size and color
void screen() {
  background(255);
  //Load font
  font = loadFont("ComicSansMS-100.vlw");
  textFont(font);
  //Change color mode from here on out
  colorMode(HSB, 100);
  black = color(0, 100);
  white = color(100, 100);
  red = color(100, 100, 100);
  cyan = color(50, 100, 100);
  grey = color(40, 100);
  //previousFrame's initial screen
  previousFrame = new PImage(panelWidth, height);
}
