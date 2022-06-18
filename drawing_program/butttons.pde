void tpButDraw () {
  
  fill (panelColor);
  
  if (templButtonON == true) {
      noStroke();
      rect(100,600,210,170);
      
  

      rect(100,600,70,70); 
      image(dragonCP, 100,600,70,70);

      //fill(white);
      rect(220,600,70,70); 
      image(vaseCP, 240,600,70,70);
      //fill(white);

      rect(170,600,70,70);
      image(appleCP, 170,600,70,70);
      
      rect(100,670,70,70);
      image( flowerCP, 100,670,70,70);

      rect(170,670,70,70);
      image(peacockCP, 170,670,70,70);

      rect(240,670,70,70);
      image(heartCP, 240,670,70,70);
      
      
 //fill(white);     
 stroke(reset);
  }
 
 if (templButtonRESET == true) {
   noStroke();
   fill(panelColor);
      rect(100,600,210,170);
      //fill(white);
      stroke(reset);
 }
 } 
 
//  //===================================================================
void tpMP () {
  vaseMP();
  appleMP();
  dragonMP();
  peacockMP ();
  heartMP ();
  flowerMP ();

  if (mouseX>=10 && mouseX<=88 && mouseY>=600 && mouseY<=678) {
    if (templButtonON == false) {
      templButtonON = true;
      templButtonRESET = false;
    } else {
      templButtonON = false;
      templButtonRESET = true;
    }
}

}

void vaseMP () {
  if (templButtonON == true && mouseX>240 && mouseX<300 && mouseY>600 && mouseY<670) {
   image(vaseCP, 400,150,600,600);
  }
}
  
void appleMP () {
  if (templButtonON == true && mouseX>170 && mouseX<240 && mouseY>600 && mouseY<670) {
      image(appleCP, 400,150,600,600);
  }
}
  
void dragonMP () {
 if (templButtonON == true && mouseX>100 && mouseX<170 && mouseY>600 && mouseY<670) {
  image(dragonCP,400,150,600,600);
  }
}

void peacockMP () {
 if (templButtonON == true && mouseX>170 && mouseX<240 && mouseY>670 && mouseY<740) {
  image(peacockCP,400,150,600,600);
  }
}

void flowerMP () {
 if (templButtonON == true && mouseX>100 && mouseX<170 && mouseY>670 && mouseY<740) {
  image(flowerCP,400,150,600,600);
  }
}

void heartMP () {
 if (templButtonON == true && mouseX>240 && mouseX<300 && mouseY>670 && mouseY<740) {
  image(heartCP,400,150,600,600);
  }
}
//
void saveB(){
  if (mouseX>260 && mouseX<365 && mouseY>84 && mouseY<106) {
      if (frameCount > sKeyFrameCount + inputDelay) {
        saveFrame("Drawing" + frameCount + ".png");
      }
      sKeyFrameCount = frameCount;
    }
}

void undo() {
    if (mouseX>260 && mouseX<365 && mouseY>55 && mouseY<77) {
      updatePixels();
    }
}

void saveframe() {
    if (mouseX>260 && mouseX<365 && mouseY>26 && mouseY<48) {
      loadPixels();
    }
}
//
//
//
//
void stampDraw () {
  
  if (stampBON == true) {
      noStroke();
      rect(100,500,210,0);
      
  

      rect(100,500,40,40); 
      image(birdS1, 100,500,40,40);
      
      rect( 130,500,60,60); 
      image(birdS, 130,500,60,60);

      rect(230,500,40,40);
      image(diamondS, 180,510,40,40);
      
      rect(230,500,40,40);
      image( dragonS, 230,500,40,40);

      rect(100,550,30,30);
      image(butterflyS, 100,550,30,30);

      rect(140,550,30,30);
      image(sharkS, 140,550,30,30);
      
      rect(170,550,40,40);
      image(spiderS, 170,545,40,40);
      
      rect(190,540,60,60);
      image(treeS, 190,540,60,60);
      
      rect(240,555,25,25);
      image(turtleS, 240,555,25,25);
      
      rect(275,550,30,30);
      image(roseS, 275,550,30,30);
      
      
      
 fill(white);     
 stroke(reset);
  }
 
 if (stampBOFF == true) {
   noStroke();
   fill(panelColor);
      rect(100,500,210,0);
      fill(white);
      stroke(reset);
 }
 } 
 
//  //===================================================================
void stampMP () {
  birdS1();
  birdS();
  diamondS();
  dragonS ();
  butterflyS ();
  sharkS ();
  spiderS();
  treeS();
  turtleS();
  roseS();
  

  if (mouseX>=10 && mouseX<=88 && mouseY>=500 && mouseY<=578) {
    if (stampBON == false) {
      stampBON = true;
      stampBOFF = false;
    } else {
      stampBON = false;
      stampBOFF = true;
    }
}

}
//
void birdS1 () {
  if ( mouseX>100 && mouseX<140 && mouseY>500 && mouseY<540) {
    stampBON = true;
    birdBON=false;
    diamondBON=false;
    roseBON=false;
    dragonBON=false;
    butterflyBON=false;
    sharkBON=false;
    treeBON=false;
    turtleBON=false;
    spiderBON=false;
  }
    if(stampBON == true){
      image(birdS1, mouseX,mouseY,50,50); 
   }
  }
  
  void birdS () {
  if ( mouseX>130 && mouseX<190 && mouseY>510 && mouseY<550) {
    birdBON = true;
    stampBON=false;
    diamondBON=false;
    roseBON=false;
    dragonBON=false;
    butterflyBON=false;
    sharkBON=false;
    treeBON=false;
    turtleBON=false;
    spiderBON=false;
  }
      if(birdBON == true){
      image(birdS, mouseX,mouseY,60,60); 
   }
  }
  
  void diamondS () {
  if ( mouseX>180 && mouseX<220 && mouseY>510 && mouseY<550) {
    diamondBON = true;
    stampBON=false;
    birdBON=false;
    roseBON=false;
    dragonBON=false;
    butterflyBON=false;
    sharkBON=false;
    treeBON=false;
    turtleBON=false;
    spiderBON=false;
  }
    if(diamondBON == true){
      image(diamondS, mouseX,mouseY,50,50); 
   }
  }
  
  void dragonS () {
  if ( mouseX>230 && mouseX<280 && mouseY>500 && mouseY<540) {
    dragonBON = true;
    stampBOFF=false;
    birdBON=false;
    roseBON=false;
    dragonBON=false;
    butterflyBON=false;
    sharkBON=false;
    treeBON=false;
    turtleBON=false;
    spiderBON=false;
  }
    if(dragonBON == true){
      image(dragonS, mouseX,mouseY,50,50); 
   }
  }
  
  void butterflyS () {
  if ( mouseX>100 && mouseX<140 && mouseY>500 && mouseY<540) {
    stampBON = true;
    stampBOFF=false;
    birdBON=false;
    diamondBON=false;
    roseBON=false;
    dragonBON=false;
    sharkBON=false;
    treeBON=false;
    turtleBON=false;
    spiderBON=false;
  }
    if(stampBON == true){
      image(birdS1, mouseX,mouseY,50,50); 
   }
  }
  
  void sharkS () {
  if ( mouseX>100 && mouseX<140 && mouseY>500 && mouseY<540) {
    stampBON = true;
    stampBOFF=false;
    birdBON=false;
    diamondBON=false;
    roseBON=false;
    dragonBON=false;
    butterflyBON=false;
    treeBON=false;
    turtleBON=false;
    spiderBON=false;
  }
    if(stampBON == true){
      image(birdS1, mouseX,mouseY,50,50); 
   }
  }
  
  void spiderS () {
  if ( mouseX>100 && mouseX<140 && mouseY>500 && mouseY<540) {
    stampBON = true;
    stampBOFF=false;
    birdBON=false;
    diamondBON=false;
    roseBON=false;
    dragonBON=false;
    butterflyBON=false;
    sharkBON=false;
    treeBON=false;
    turtleBON=false;
  }
    if(stampBON == true){
      image(birdS1, mouseX,mouseY,50,50); 
   }
  }
  
  void treeS () {
  if ( mouseX>100 && mouseX<140 && mouseY>500 && mouseY<540) {
    stampBON = true;
    stampBOFF=false;
    birdBON=false;
    diamondBON=false;
    roseBON=false;
    dragonBON=false;
    butterflyBON=false;
    sharkBON=false;
    turtleBON=false;
    spiderBON=false;
  }
    if(stampBON == true){
      image(birdS1, mouseX,mouseY,50,50); 
   }
  }
  
  void turtleS () {
  if ( mouseX>100 && mouseX<140 && mouseY>500 && mouseY<540) {
    stampBON = true;
    stampBOFF=false;
    birdBON=false;
    diamondBON=false;
    roseBON=false;
    dragonBON=false;
    butterflyBON=false;
    sharkBON=false;
    treeBON=false;
    spiderBON=false;
  }
    if(stampBON == true){
      image(birdS1, mouseX,mouseY,50,50); 
   }
  }
  
  void roseS () {
  if ( mouseX>100 && mouseX<140 && mouseY>500 && mouseY<540) {
    stampBON = true;
    stampBOFF=false;
    birdBON=false;
    diamondBON=false;
    dragonBON=false;
    butterflyBON=false;
    sharkBON=false;
    treeBON=false;
    turtleBON=false;
    spiderBON=false;
  }
    if(stampBON == true){
      image(birdS1, mouseX,mouseY,50,50); 
   }
  }
  
  //
  //
  //
  //
  //
  //
  void help() {
  if (mouseX>992 && mouseX<1022 && mouseY>45 && mouseY<75) {
      if (frameCount > helpFrameCount + inputDelay) {
        if (helpPanel) {
          helpPanel = false;
        } else {
          helpPanel = true;
        }
      }
      helpFrameCount = frameCount;
    }
     if (mouseX>210 && mouseX<1022 && mouseY>155 && mouseY<766) {
       helpPanel = false;
     }
  }
  //
  //
  //
  void keyhelp() {
  if (mouseX>992 && mouseX<1022 && mouseY>80 && mouseY<110) {
      if (frameCount > helpFrameCount + inputDelay) {
        if (keyHelpPanel) {
          keyHelpPanel = false;
        } else {
          keyHelpPanel = true;
        }
      }
      helpFrameCount = frameCount;
    }
    if (mouseX>210 && mouseX<1022 && mouseY>155 && mouseY<766) {
       keyHelpPanel = false;
    }
  }
 
  //===========================================================================
 void penDraw () {
  
  fill (panelColor);
  
  if ( pen == true) {
      noStroke();
      rect(100,400,210,80);
      
      pendraw ();
  }
     
 //fill(white);     
 stroke(reset);
 
 if (pen == false) {
   noStroke();
   fill(panelColor);
      rect(100,400,210,80);
      //fill(white);
      stroke(reset);
 }
 } 
 //Draw Circle
  void pendraw () {
    if (drawCircle) {
    fill(black);
    strokeWeight(1);
    stroke(white);
    ellipse(125, 420, 35, 35);
  } else {
    fill(white);
    strokeWeight(1);
    stroke(black);
    ellipse(125, 420, 35, 35);
  }
     //Draw Ellipse
  if (drawEllipse) {
    fill(black);
    strokeWeight(1);
    stroke(white);
    ellipse(180, 420, 45, 30);
  } else {
    fill(white);
    strokeWeight(1);
    stroke(black);
    ellipse(180, 420, 45, 30);
  }

  //Draw Square
  if (drawSquare) {
    fill(black);
    strokeWeight(1);
    stroke(white);
    //rectMode(CENTER);
    rect(220, 400, 35, 35);
    //rectMode(CORNER);
  } else {
    fill(white);
    strokeWeight(1);
    stroke(black);
    //rectMode(CENTER);
    rect(220, 400, 35, 35);
    //rectMode(CORNER);
  }

  //Draw Rectangle
  if (drawRectangle) {
    fill(black);
    strokeWeight(1);
    stroke(white);
    //rectMode(CENTER);
    rect(110, 450, 45, 30);
    //rectMode(CORNER);
  } else {
    fill(white);
    strokeWeight(1);
    stroke(black);
    //rectMode(CENTER);
    rect(110, 450, 45, 30);
    //rectMode(CORNER);
  }

  //Draw Triangle
  if (drawTriangle) {
    fill(black);
    strokeWeight(1);
    stroke(white); 
    triangle(190, 450, 170, 480, 210, 480);
  } else {
    fill(white);
    strokeWeight(1);
    stroke(black);
    //x, y: CEIL(SQRT((size^2)/2)) = dist :: triangle(x, y - dist, x + dist, y + dist, x - dist, y + dist)
    //triangle(25, 507, 43, 543, 7, 543);  
    triangle(190, 450, 170, 480, 210, 480);
  }

  //Draw Line:
  if (drawLine) {
    fill(white);
    noStroke();
    strokeWeight(1);
    //rect(240, 470, 40, 45);
    strokeWeight(1);
    stroke(black);
    line(250, 450, 230, 480);
  } else {
    strokeWeight(1);
    stroke(black);
    line(250, 450, 230, 480);
  }
  }
//==================================================================

 void penMP () {
  circleMP();
  squareMP();
  lineMP();
  rectangleMP ();
  triangleMP ();
  eclipseMP ();

  if (mouseX>=10 && mouseX<=88 && mouseY>=400 && mouseY<=478) {
    if (pen == false) {
      pen = true;
      //templButtonRESET = false;
    } else {
      pen = false;
      //templButtonRESET = true;
    }
}

}

void circleMP () {
  if (mouseX>100 && mouseX<140 && mouseY>400 && mouseY<435) {
    if (frameCount > circleFrameCount + inputDelay) {
          if (drawCircle) {
            drawCircle = false;
          } else {
            drawCircle = true;
          }
          circleFrameCount = frameCount;
        }
      }
}
  
void squareMP () {
  if (mouseX>220 && mouseX<255 && mouseY>400 && mouseY<435) {
        if (frameCount > squareFrameCount + inputDelay) {
          if (drawSquare) {
            drawSquare = false;
          } else {
            drawSquare = true;
          }
          squareFrameCount = frameCount;
        }
      }
}
  
void lineMP () {
  if (mouseX>220 && mouseX<255 && mouseY>440 && mouseY<480) {
        if (frameCount > lineFrameCount + inputDelay) {
          if (drawLine) {
            drawLine = false;
            lineClicked = false;
          } else {
            drawLine = true;
            lineClicked = true;
          }
          lineFrameCount = frameCount;
        }
      }
}

void rectangleMP () {
 if (mouseX > 110 && mouseX < 155 && mouseY > 450 && mouseY < 480) {
        if (frameCount > rectangleFrameCount + inputDelay) {
          if (drawRectangle) {
            drawRectangle = false;
          } else {
            drawRectangle = true;
          }
          rectangleFrameCount = 100;
        }
      }
}

void triangleMP () {
  if (mouseX > 170 && mouseX < 210 && mouseY > 450 && mouseY < 480) {
        if (frameCount > triangleFrameCount + inputDelay) {
          if (drawTriangle) {
            drawTriangle = false;
          } else {
            drawTriangle = true;
          }
          triangleFrameCount = frameCount;
        }
  }
}

void eclipseMP () {
  if (mouseX > 180 && mouseX < 200 && mouseY > 390 && mouseY < 435) {
        if (frameCount > ellipseFrameCount + inputDelay) {
          if (drawEllipse) {
            drawEllipse = false;
          } else {
            drawEllipse = true;
          }
          ellipseFrameCount = frameCount;
        }
      }
}
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
