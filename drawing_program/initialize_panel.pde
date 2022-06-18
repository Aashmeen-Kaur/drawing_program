//draw the initial draw panel

void drawpanel() {
  strokeWeight(1);
  //Draw panelColor drawing panel
  noStroke();
  fill(panelColor);
  rect(0, 0, panelWidth, 766);
  //
  strokeWeight(1);
  noStroke();
  fill(panelColor);
  rect(0, 0, 1024, 115);

  //Brush color box: the color of the Alternative brush color
  //Text: "Brush Color"
  fill(black);
  textSize(16);
  text("Brush Color", 5, 16);

  //Text: "<BrushSize>"
   fill(black);
  textSize(16);
  text("Brush Size", 5, 280);
  
  //Text: "<BrushSize>"
  fill(black);
  textSize(20);
  text(brushSize, 14, 310);
 
  //Text: "Background"
  fill(black);
  textSize(16);
  text("Background", 120, 16);
  
  //Draw GradientBG button box
  if (fillGradientBG) {
    fill(white);
    stroke(white);
    triangle(120, 50, 120, 25, 220, 25);
    fill(grey);
    stroke(grey);
    triangle(120, 50, 225, 49, 225, 25);
    //Text: "GradientBG"
    fill(black);
    textSize(16);
    text("GradientBG", 125, 45);
  } else {
    fill(white);
    stroke(white);
    triangle(120, 50, 120, 25, 220, 25);
    fill(grey);
    stroke(grey);
    triangle(120, 50, 225, 49, 225, 25);
    //Text: "GradientBG"
    fill(black);
    textSize(16);
    text("GradientBG", 125, 45);
  }
  

  //Draw Background button box
  if (fillBackground) {
    fill(grey);
    stroke(grey);
    rect(120, 55, 105, 22);
    //Text: "FillBG"
    fill(black);
    textSize(16);
    text("FillBG", 150, 74);
  } else {
    fill(grey);
    stroke(grey);
    rect(120, 55, 105, 22);
    //Text: "FillBG"
    fill(black);
    textSize(16);
    text("FillBG", 150, 74);
  }
    //quit button box and hover over
    if (quit) {
    fill(white);
    stroke(red);
    rect(960,0,70,40);
  } else {
    fill (grey);
    if (mouseX>=950 && mouseX<=1024 && mouseY>=0 && mouseY<=45)
    fill(red);
    stroke(black);
    rect(960,0,70,40);
  }
    //HELP
  if (help) {
    fill(grey);
    stroke(grey);
    rect(992,45,30,30);
    //Text: "?"
    fill(black);
    textSize(18);
    text("?", 1004,68);
  } else {
    fill(grey);
    stroke(grey);
    rect(992,45,30,30);
    //Text: "?"
    fill(black);
    textSize(18);
    text("?", 1004,68);
  }
  //SHORTCUT KEYS
  if (skey) {
    fill(grey);
    stroke(grey);
    rect(992,80,30,30);
    //Text: "ClearBG"
    fill(black);
    textSize(16);
    text("ClearBG", 142, 100);
  } else {
    fill(grey);
    stroke(grey);
    rect(992,80,30,30);
    //Text: "ClearBG"
    fill(black);
    textSize(16);
    
  }
  //STAMP
  if (stamp) {
    fill(grey);
    stroke(grey);
    rect(10, 500, 78, 78);
    //Text: "stamp"
    fill(black);
    textSize(16);
    text("Stamp", 25, 545);
  } else {
    fill(grey);
    stroke(grey);
    rect(10, 500, 78, 78);
    //Text: "stamp"
    fill(black);
    textSize(16);
    text("Stamp", 25, 545);
  }
  //Template
  if (template) {
    fill(grey);
    stroke(grey);
    rect(10, 600, 78, 78);
    //Text: "template"
    fill(black);
    textSize(16);
    text("Template", 25, 645);
  } else {
    fill(grey);
    stroke(grey);
    rect(10, 600, 78, 78);
    //Text: "template"
    fill(black);
    textSize(16);
    text("Template", 15, 645);
  }
  //PEN
  if (pen) {
    fill(grey);
    stroke(grey);
    rect(10, 400, 78, 78);
    //Text: "pen"
    fill(black);
    textSize(16);
    text("Pen", 35, 445);
  } else {
    fill(grey);
    stroke(grey);
    rect(10, 400, 78, 78);
    //Text: "pen"
    fill(black);
    textSize(16);
    text("Pen", 35, 445);
  }

  //Undo
  if (undo) {
    fill(grey);
    stroke(grey);
    rect(260, 55, 105, 22);
    //Text: "undo"
    fill(black);
    textSize(16);
    text("Undo", 290, 74);
  } else {
    fill(grey);
    stroke(grey);
    rect(260, 55, 105, 22);
    //Text: "undo"
    fill(black);
    textSize(16);
    text("Undo", 290, 74);
  }
  //save
  if (save) {
    fill(grey);
    stroke(grey);
    rect(260, 84, 105, 22);
    //Text: "save"
    fill(black);
    textSize(16);
    text("Save", 290, 102);
  } else {
    fill(grey);
    stroke(grey);
    rect(260, 84, 105, 22);
    //Text: "save"
    fill(black);
    textSize(16);
    text("Save", 290, 102);
  }
  //erase
  if (erase) {
    fill(grey);
    stroke(grey);
    rect(260, 26, 105, 22);
    //Text: "erase"
    fill(black);
    textSize(16);
    text("Erase", 290, 36);
  } else {
    fill(grey);
    stroke(grey);
    rect(260, 26, 105, 22);
    //Text: "erase"
    fill(black);
    textSize(16);
    text("Erase", 290, 46);
  }
  
  //Clear Background button box
  if (clearBackground) {
    fill(grey);
    stroke(grey);
    rect(120, 84, 105, 22);
    //Text: "ClearBG"
    fill(black);
    textSize(16);
    text("ClearBG", 142, 100);
  } else {
    fill(grey);
    stroke(grey);
    rect(120, 84, 105, 22);
    //Text: "ClearBG"
    fill(black);
    textSize(16);
    text("ClearBG", 142, 100);
  }

  //Draw random color button box
  if (randomColor) {
    for (int i = 5; i < 96; i++) {
      stroke(i, 100, 100);
      line(i, 230, i, 255);
    }
    //Text: "Random"
    fill(white);
    textSize(16);
    text("   Random", 8, 249);
  } else {
    for (int i = 5; i < 96; i++) {
      stroke(i, 100, 100, 20);
      line(i, 230, i, 255);
    }
    //Text: "Random"
    fill(white);
    textSize(16);
    text("   Random", 8, 249);
  }

  //Draw Brush Color Bar
 for (int i = 0; i < 200; i += 2) {
    stroke(i / 2, 100, 100);
    line(5, 20 + i, 30, 20 + i);
    line(5, 20 + i + 1, 30, 20 + i + 1);
  }
  for (int i = 0; i < 200; i += 2) {
    stroke(i / 2, 100);
    line(35, 20 + i, 60, 20 + i);
    line(35, 20 + i + 1, 60, 20 + i + 1);
  }
  //Draw this bar once
  if (drawAlphaBar == true) {
    for (int i = 0; i < 200; i += 2) {
      stroke(100, 100, 100, i/2);
      line(65, 20 + i, 90, 20 + i);
      line(65, 20 + i + 1, 90, 20 + i + 1);
    }
  }

  //Draw brushColorBars 1 through 3 for Alt brush
  stroke(white);
  line(5, 20 + brushColorBar1YAlt, 30, 20 + brushColorBar1YAlt);
  line(65, 20 + brushColorBar3YAlt, 90, 20 + brushColorBar3YAlt);
  stroke(cyan);
  line(35, 20 + brushColorBar2YAlt, 60, 20 + brushColorBar2YAlt);
  //Draw brushColorBars 1 through 3
  stroke(black);
  line(5, 20 + brushColorBar1Y, 30, 20 + brushColorBar1Y);
  line(65, 20 + brushColorBar3Y, 90, 20 + brushColorBar3Y);
  stroke(red);
  line(35, 20 + brushColorBar2Y, 60, 20 + brushColorBar2Y);

  //Draw Brush Size Right-Triangle and Bar
  for (int i = 0; i < 91; i++) {
    if (brushSizeBarXAlt == i) {
      stroke(white);
    } else {
      stroke(brushColor);
    }
    if (brushSizeBarX == i) {
      stroke(black);
    }
    line(5 + i, 380, 5 + i, 380 - i);
  }
}
