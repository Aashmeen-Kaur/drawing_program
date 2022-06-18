void keys (){
//Listen for key events
  if (keyPressed) {
    MusicButton();
    //If '+' or '=' is pressed, show/hide panel
    if (key == '+' || key == '=') {
      displayPanel = true;
    }

    //If '-' or '_' is pressed, show/hide panel
    if (key == '-' || key == '_') {
      if (displayPanel) {
        fill(100, 100);
        noStroke();
        rect(0, 0, panelWidth, height);
      }
      displayPanel = false;
    }
    
    //if 'q' or'Q' is pressed, close the program
    if (key == 'q' || key == 'Q') exit();
    

    //If '?' or '/' is pressed, show help info
    if (key == '?' || key == '/') {
      if (frameCount > helpFrameCount + inputDelay) {
        if (helpPanel) {
          helpPanel = false;
        } else {
          helpPanel = true;
        }
      }
      helpFrameCount = frameCount;
    }

    //Save the frame to a file
    if (key == 's') {
      if (frameCount > sKeyFrameCount + inputDelay) {
        saveFrame("Drawing" + frameCount + ".png");
      }
      sKeyFrameCount = frameCount;
    }

    //Save the canvas to a file
    if (key == 'S') {
      if (frameCount > sKeyFrameCount + inputDelay) {
        PImage img = get(panelWidth, 0, width - panelWidth, height);
        img.save("Drawing" + frameCount + ".png");
      }
      sKeyFrameCount = frameCount;
    }

    //Set gradient
    if (key == 'g' || key == 'G') {
      fillGradientBG = true;
      gradientX = 15;
    }

    //Set fill
    if (key == 'f' || key == 'F') {
      fillBackground = true;
    }
    
    //If 'c' or 'C' is pressed, clear the drawing
    if (key == 'c' || key == 'C') {
      clearBackground = true;
    }
    
    //Set random
    if (key == 'r' || key == 'R') {
      if (frameCount > randomColorFrameCount + inputDelay) {
        if (randomColor) {
          randomColor = false;
        } else {
          randomColor = true;
        }
      }
      randomColorFrameCount = frameCount;
    }

    //Save the current frame
    if (key == 'x' || key == 'X') {
      loadPixels();
    }
    
    //Revert to the previous frame
    if (key == 'z' || key == 'Z') {
      updatePixels();
    }
  }
  drawAlphaBar = false;
}
