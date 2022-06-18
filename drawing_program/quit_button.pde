void quitbutton() {
   if (mouseX>=950 && mouseX<=1024 && mouseY>=0 && mouseY<=45) { 
     fill(black);
    textSize(16);
    text("X", 986, 29);
  } else { 
  } //End If
   fill(black);
    textSize(18);
    text("X", 985, 30);
}

 

void quitButMP () {
   if(mouseX>=950 && mouseX<=1024 && mouseY>=0 && mouseY<=45) exit();
}
