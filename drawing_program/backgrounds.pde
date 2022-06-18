 void background (){
  //Determine brush color
  if (brushColorBW) {
    brushColor = color(brushColorHue, brushColorAlp);
  } else {
    brushColor = color(brushColorHue, brushColorSat, brushColorBri, brushColorAlp);
  }

  if (brushColorBWAlt) {
    brushColorAlt = color(brushColorHueAlt, brushColorAlpAlt);
  } else {
    brushColorAlt = color(brushColorHueAlt, brushColorSatAlt, brushColorBriAlt, brushColorAlpAlt);
  }

  //Display draw panel or not
  if (displayPanel == true) {
    drawAlphaBar = true;
    drawpanel();

    //Check if user wants to display the help
    if (helpPanel == true) {
      drawHelpPanel();
    }
  }
 //Draw gradientBG if directed
  if (fillGradientBG) {
    if (displayPanel) {
      colorMode(HSB, 360);
      if (!brushColorBW) {
        if (randomColor) {
          for (float i = 0.0; i < height; i++) {
            stroke(i * (360.0/height), 3.6 * brushColorSat, 3.6 * brushColorBri, i * ((4.0 * gradientX)/height));
            line(panelWidth, i, width, i);
          }
        } else {
          for (float i = 0; i < height; i++) {
            strokeWeight(1);
            stroke(brushColorHue * 3.6, brushColorSat * 3.6, brushColorBri * 3.6, i * ((4.0 * gradientX)/766.0));
            line(panelWidth, i, width, i);
          }
        }
        fillGradientBG = false;
      } else {
        for (float i = 0; i < height; i++) {
          strokeWeight(1);
          stroke(brushColorHue * 3.6, i * ((4.0 * gradientX)/766.0));
          //print("i = " + i + ": ");
          //println(3.6, i * (200.0/766.0));
          line(panelWidth, i, width, i);
        }
        fillGradientBG = false;
      }
      colorMode(HSB, 100);
    } else {
      colorMode(HSB, 360);
      if (!brushColorBW) {
        if (randomColor) {
          for (float i = 0.0; i < height; i++) {
            stroke(i * (360.0/height), 3.6 * brushColorSat, 3.6 * brushColorBri, i * ((4.0 * gradientX)/height));
            line(0, i, width, i);
          }
        } else {
          for (float i = 0; i < height; i++) {
            strokeWeight(1);
            stroke(brushColorHue * 3.6, brushColorSat * 3.6, brushColorBri * 3.6, i * ((4.0 * gradientX)/766.0));
            line(0, i, width, i);
          }
        }
        fillGradientBG = false;
      } else {
        for (float i = 0; i < height; i++) {
          strokeWeight(1);
          stroke(brushColorHue * 3.6, i * ((4.0 * gradientX)/766.0));
          line(0, i, width, i);
        }
        fillGradientBG = false;
      }
      colorMode(HSB, 100);
    }
  } 
  //Draw background if directed
  if (fillBackground) {
    if (displayPanel) {
      if (randomColor) {
        colorMode(HSB, 360);
        for (float i = 0.0; i < height; i++) {
          stroke(i * (360.0/height), 3.6 * brushColorSat, 3.6 * brushColorBri, 3.6 * brushColorAlp);
          line(panelWidth, i, width, i);
        }
        colorMode(HSB, 100);
      } else {
        fill(brushColor);
        stroke(brushColor);
        rect(panelWidth, 0, width, height);
      }
    } else {
      if (randomColor) {
        colorMode(HSB, 360);
        for (float i = 0.0; i < height; i++) {
          stroke(i * (360.0/height), 3.6 * brushColorSat, 3.6 * brushColorBri, 3.6 * brushColorAlp);
          line(0, i, width, i);
        }
        colorMode(HSB, 100);
      } else {
        fill(brushColor);
        stroke(brushColor);
        rect(0, 0, width, height);
      }
    }
    fillBackground = false;
  }

  if (clearBackground) {
    if (displayPanel) {
      fill(white);
      noStroke();
      rect(panelWidth, 0, width, height);
    } else {
      fill(white);
      noStroke();
      rect(0, 0, width, height);
    }
    clearBackground = false;
  }
  }
