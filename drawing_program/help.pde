
void drawHelpPanel() {
  //grey overlay
  fill(grey);
  noStroke();
  rect(200, 200, 700,450);

  //Info for Brush Color
  fill(yellow);
  textSize(helpPanelFontSize);
  text("[1st Bar] = RBG", 210, 18 * helpPanelFontSize );
  text("[2nd Bar] = shades ", 210, 21 * helpPanelFontSize);
  text("[3rd Bar] = opasity", 210, 24 * helpPanelFontSize);
  text("Brush Size", 210, 27 *helpPanelFontSize);
  text("Gradient Background", 210, 30 *helpPanelFontSize);
  text("Fill background", 210, 33 *helpPanelFontSize);
  text("Clear background", 210, 34.2 *helpPanelFontSize);
  text("Random", 210, 35.4 *helpPanelFontSize);
  fill(white);
  textSize(helpPanelFontSize);
  text("Is to pick a color for you brush or background ", 210, 19.5 * helpPanelFontSize);
    text("", 210, 20 * helpPanelFontSize);
  text("Is to use black, white, or grey. Since RGB bar doesn't have those", 210, 22.5 * helpPanelFontSize);
    text("", 210, 23 * helpPanelFontSize);
  text("is for you to set the oopacity of the colors", 210, 25.5 *helpPanelFontSize);
    text("", 210, 26 * helpPanelFontSize);
  text("Is to set the size of your brush", 210, 28.5 *helpPanelFontSize);
    text("", 210, 29 * helpPanelFontSize);
  text("After choosing you color click the button to make the background ombre", 210, 31.5 *helpPanelFontSize);
    text("", 210, 32 * helpPanelFontSize);
  text(": make the background the color of your choice", 304, 33 *helpPanelFontSize);
  text(": to start on a new canvas", 320, 34.2 *helpPanelFontSize);
  text(": Make the background or your pen color rainbow", 260, 35.4 *helpPanelFontSize);
}
