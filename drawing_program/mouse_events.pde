void events (){
//Listen for mouse events
  if (mousePressed) {
    //If the display panel is there, detect the clicking of the options
    if (displayPanel) {
      //If mouse clicks on "GradientBG" Button
      if (mouseX > 120 && mouseX < 227 && mouseY > 10 && mouseY < 50) {
        fillGradientBG = true;
        gradientX = mouseX;
      }
    }

      //if mouse clicks quit button
       if(mouseX>=1024 && mouseX<=900 && mouseY>=50 && mouseY<=0) {
          quit = true;
       if(mouseX>=1024 && mouseX<=900 && mouseY>=50 && mouseY<=0) exit();
       }
  
      //If mouse clicks on "FillBG" Button
      if (mouseX > 120 && mouseX < 227 && mouseY > 52 && mouseY < 80) {
        fillBackground = true;
      }
      //If mouse clicks on "ClearBG" Button
      if (mouseX > 120 && mouseX < 227 && mouseY > 82 && mouseY < 110) {
        clearBackground = true;
      }
      //If mouse clicks on "Random" Button
      if (mouseX > 5 && mouseX < 96 && mouseY > 228 && mouseY < 257) {
        if (frameCount > randomColorFrameCount + inputDelay) {
          if (randomColor) {
            randomColor = false;
          } else {
            randomColor = true;
          }
        }
        randomColorFrameCount = frameCount;
      }
      //If mouse clicks on bars
      if (mouseX > 0 && mouseX < panelWidth && mouseY > 0 && mouseY < height) {
        if (mouseButton == LEFT) {
          if (mouseX > 5 && mouseX < 30 && mouseY > 20 && mouseY < 220) {
            //brushColor = color((mouseY - 15) / 2, 100, 100);
            brushColorHue = (mouseY - 15) / 2;
            brushColorBW = false;
            brushColorBar1Y = mouseY - 20;
          }
          if (mouseX > 35 && mouseX < 60 && mouseY > 20 && mouseY < 220) {
            brushColorHue = (mouseY - 15) / 2;
            brushColorBW = true;
            brushColorBar2Y = mouseY - 20;
          }
          if (mouseX > 65 && mouseX < 90 && mouseY > 20 && mouseY < 220) {
            brushColorAlp = (mouseY - 15) / 2;
            brushColorBar3Y = mouseY - 20;
          }
          if (mouseX > 5 && mouseX < 96 && mouseY > 300 && mouseY < 370) {
            brushSize = mouseX - 5;
            brushSizeBarX = mouseX - 5;
          }
        } else if (mouseButton == RIGHT) {
          if (mouseX > 5 && mouseX < 30 && mouseY > 20 && mouseY < 220) {
            brushColorHueAlt = (mouseY - 15) / 2;
            brushColorBWAlt = false;
            brushColorBar1YAlt = mouseY - 20;
          }
          if (mouseX > 35 && mouseX < 60 && mouseY > 20 && mouseY < 220) {
            //brushColor = color((mouseY - 15) / 2, 100);
            brushColorHueAlt = (mouseY - 15) / 2;
            brushColorBWAlt = true;
            brushColorBar2YAlt = mouseY - 20;
          }
          if (mouseX > 65 && mouseX < 90 && mouseY > 20 && mouseY < 220) {
            brushColorAlpAlt = (mouseY - 15) / 2;
            brushColorBar3YAlt = mouseY - 20;
          }
          if (mouseX > 5 && mouseX < 96 && mouseY > 350 && mouseY < 370) {
            brushSizeAlt = mouseX - 5;
            brushSizeBarXAlt = mouseX - 5;
          }
        }
      }
  



      //If mouse is within the canvas while displayPanel is displayed
      if (mouseX > panelWidth && mouseX < width && mouseY > 0 && mouseY < height) {
        if (drawCircle || drawEllipse || drawSquare 
          || drawRectangle|| drawTriangle || drawLine) {
          if (drawSquare) { //Draw Square
            if (randomColor) {
              fill(random(0, 100), 100, 100, brushColorAlp);
              stroke(random(0, 100), 100, 100, brushColorAlp);
            } else {
              fill(brushColor);
              stroke(brushColorAlt);
            }
            rectMode(CENTER);
            rect(mouseX, mouseY, brushSize * 8, brushSize * 8);
            rectMode(CORNER);
          }
          if (drawRectangle) { //Draw Rectangle
            if (randomColor) {
              fill(random(0, 100), 100, 100, brushColorAlp);
              stroke(random(0, 100), 100, 100, brushColorAlp);
            } else {
              fill(brushColor);
              stroke(brushColorAlt);
            }
            rectMode(CENTER);
            rect(mouseX, mouseY, brushSize * 8, brushSizeAlt * 8);
            rectMode(CORNER);
          }
          if (drawCircle) { //Draw Circle
            if (randomColor) {
              fill(random(0, 100), 100, 100, brushColorAlp);
              stroke(random(0, 100), 100, 100, brushColorAlp);
            } else {
              fill(brushColor);
              stroke(brushColorAlt);
            }
            ellipse(mouseX, mouseY, brushSize * 8, brushSize * 8);
          }
          if (drawEllipse) { //Draw Ellipse
            if (randomColor) {
              fill(random(0, 100), 100, 100, brushColorAlp);
              stroke(random(0, 100), 100, 100, brushColorAlp);
            } else {
              fill(brushColor);
              stroke(brushColorAlt);
            }
            ellipse(mouseX, mouseY, brushSize * 8, brushSizeAlt * 8);
          }
          if (drawTriangle) { //Draw Triangle
            if (randomColor) {
              fill(random(0, 100), 100, 100, brushColorAlp);
              stroke(random(0, 100), 100, 100, brushColorAlp);
            } else {
              fill(brushColor);
              stroke(brushColorAlt);
            }
            //x, y: CEIL(SQRT((size^2)/2)) = dist :: triangle(x, y - dist, x + dist, y + dist, x - dist, y + dist)
            //triangle(25, 507, 43, 543, 7, 543);  given 25, 525
            int distance = brushSize * 8;
            int distance2 = (int) Math.ceil((Math.sqrt((distance * distance) / 2)));
            triangle(mouseX, mouseY - distance2, mouseX + distance2, mouseY + distance2, mouseX - distance2, mouseY + distance2);
          }
        } else if (mouseButton == LEFT) { //Default LMB to draw
          if (randomColor) {
            stroke(random(0, 100), brushColorSat, brushColorBri, brushColorAlp);
          } else {
            stroke(brushColor);
          }
          strokeWeight(brushSize);
          line(pmouseX, pmouseY, mouseX, mouseY);
        } else if (mouseButton == RIGHT) { //Default RMB to draw
          if (randomColor) {
            stroke(random(0, 100), brushColorSatAlt, brushColorBriAlt, brushColorAlpAlt);
          } else {
            stroke(brushColorAlt);
          }
          strokeWeight(brushSizeAlt);
          line(pmouseX, pmouseY, mouseX, mouseY);
        }
      }
    }
    //If display panel is not showing
    if (!displayPanel) {
      //If mouse is anywhere within the canvas while displayPanel is not displayed
      if (mouseX > 0 && mouseX < width && mouseY > 0 && mouseY < height) {
        if (drawLine) {
            //x, y: CEIL(SQRT((size^2)/2)) = dist :: triangle(x, y - dist, x + dist, y + dist, x - dist, y + dist)
            //triangle(25, 507, 43, 543, 7, 543);  given 25, 525
            int distance = brushSize * 8;
            int distance2 = (int) Math.ceil((Math.sqrt((distance * distance) / 2)));
            triangle(mouseX, mouseY - distance2, mouseX + distance2, mouseY + distance2, mouseX - distance2, mouseY + distance2);
          }
        } else if (mouseButton == LEFT) { //Default LMB to draw
          
          if (randomColor) {
            stroke(random(0, 100), brushColorSat, brushColorBri, brushColorAlp);
          } else {
            stroke(brushColor);
          }
          strokeWeight(brushSize);
          line(pmouseX, pmouseY, mouseX, mouseY);
        } else if (mouseButton == RIGHT) { //Default RMB to draw
          if (randomColor) {
            stroke(random(0, 100), brushColorSatAlt, brushColorBriAlt, brushColorAlpAlt);
          } else {
            stroke(brushColorAlt);
          }
          strokeWeight(brushSizeAlt);
          line(pmouseX, pmouseY, mouseX, mouseY);
        }
    }}
