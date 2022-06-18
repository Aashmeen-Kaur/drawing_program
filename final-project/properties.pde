PFont font;                        //font placeholder
PImage previousFrame;              //Previous frame - updated on mouseRelease

color black = color(0, 100);       //color: black
color white = color(100, 100);     //color: white
color red = #F01313;               //color: red
color cyan = color(50, 100, 100);  //color: cyan
color grey = color(40, 100);       //color: gray
color darkRed = #c40000;           //color: dark red
color yellow = #FFF700;

color panelColor = color(220);     //panel color
int panelWidth = 100;              //panel width115;             


color brushColor = color(0, 100);  //brush color
boolean brushColorBW = false;      //brushColor is Black/White or Colored
int brushSize = 1;                 //brush size

color brushColorAlt = color(100, 100);//Alternative brush color
boolean brushColorBWAlt = true;    //Alternative brush color is Black/White or Colored - set alt brush to white by default
int brushSizeAlt = 1;              //alternative brush size

int brushColorHue = 0;             //brush HSB - Hue
int brushColorSat = 100;           //brush HSB - Saturation
int brushColorBri = 100;           //brush HSB - Brightness
int brushColorAlp = 100;           //brush HSB - Alpha
int brushColorHueAlt = 100;        //brush HSB - Hue Alternative
int brushColorSatAlt = 100;        //brush HSB - Saturation Alternative
int brushColorBriAlt = 100;        //brush HSB - Brightness Alternative
int brushColorAlpAlt = 100;        //brush HSB - Alpha Alternative

int brushColorBar1Y = 0;           //brushColor bar 1's Y position
int brushColorBar2Y = 0;           //brushColor bar 2's Y position
int brushColorBar3Y = 200;         //brushColor bar 3's Y position
int brushSizeBarX = 0;             //brush size X bar - can't be 0
int brushColorBar1YAlt = 0;        //brushColorAlt bar 1's Y position
int brushColorBar2YAlt = 0;        //brushColorAlt bar 2's Y position
int brushColorBar3YAlt = 200;      //brushColorAlt bar 3's Y position
int brushSizeBarXAlt = 0;          //alternative brush size X bar - can't be 0
int gradientX = 0;                 //X position of mouse when GradientBG is clicked

//FrameCounters to prevent double tapping or holding
int inputDelay = 15;               //Input delay - for clicks and key presses
int circleFrameCount = 0;          //Framecount keeper at circle
int ellipseFrameCount = 0;         //Framecount keeper at ellipse
int squareFrameCount = 0;          //Framecount keeper at square
int rectangleFrameCount = 0;       //Framecount keeper at rectangle
int triangleFrameCount = 0;        //Framecount keeper at triangle
int lineFrameCount = 0;            //Framecount keeper at line
int sKeyFrameCount = 0;            //Framecount for both 's' and 'S'
int helpFrameCount = 0;            //Framecount for help panel
int randomColorFrameCount = 0;     //Framecount for random color button
int lineFirstX = 0;                //First X when drawing line
int lineFirstY = 0;                //First Y when drawing line

int helpPanelFontSize = 13;        //font size of help panel

boolean drawAlphaBar = true;       //draw the alpha bar (brushColorBar3)
boolean displayPanel = true;       //displayPanel true --> Draw displayPanel
boolean helpPanel = false;         //display help screen
boolean keyHelpPanel = false;
boolean backHK = false;
boolean quit = false;              //quit button
boolean fillGradientBG = false;    //fill the background with a gradient
boolean fillBackground = false;    //fill the background with the primary color
boolean stamp = false;         //clear the background - to white
boolean pen = false;
boolean template = false;
boolean undo = false;
boolean save = false;
boolean saveFrame = false;
boolean skey = false;
boolean help = false;
boolean clearBackground=false;
boolean drawCircle = false;        //draw circle or not
boolean drawEllipse = false;       //draw ellipse or not
boolean drawSquare = false;        //draw square or not
boolean drawRectangle = false;     //draw rectangle or not
boolean drawTriangle = false;      //draw triangle or not
boolean drawLine = false;          //draw line or not
boolean lineClicked = false;       //line's first point
boolean randomColor = false;       //draw lines/shapes with random colors
boolean templButtonON=false;
boolean templButtonRESET=false;
boolean stampBON=false;
boolean stampBOFF=false;
boolean bird1BON=false;
boolean birdBON=false;
boolean diamondBON=false;
boolean roseBON=false;
boolean dragonBON=false;
boolean butterflyBON=false;
boolean sharkBON=false;
boolean treeBON=false;
boolean turtleBON=false;
boolean spiderBON=false;


PImage ikey, play, pause, next, back, loop, order, fastforward, rewind;
PImage appleCP, dragonCP, heartCP, peacockCP, flowerCP, vaseCP;
PImage birdS1, birdS, diamondS, dragonS, butterflyS, sharkS, spiderS, treeS, turtleS, roseS;
int x  = mouseX;
  int y  = mouseY;

void population (){
  ikey = loadImage("images/keyboard shortcut.png");
  next = loadImage("images/Forward.png");
  back = loadImage("images/Back.png");
  play = loadImage("images/play.png");
  pause = loadImage("images/pause.png");
  loop = loadImage("images/loop.png");
  order = loadImage("images/order.png");
  fastforward = loadImage("images/FastForward.png");
  rewind = loadImage("images/Rewind.png");
  //
  appleCP= loadImage("images/apple coloring page.png");
  dragonCP= loadImage("images/dragon coloring page.png");
  heartCP= loadImage("images/heart coloring page.png");
  peacockCP= loadImage("images/peacock coloring page.png");
  flowerCP= loadImage("images/flowercoloring.png");
  vaseCP= loadImage("images/vase coloring page.jpg");
  //
  birdS1= loadImage("images/bird stamp.png");
  birdS= loadImage("images/bird stamp - Copy.png");
  diamondS= loadImage("images/diamond stamp.png");
  dragonS= loadImage("images/dragon stamp.png");
  butterflyS= loadImage("images/buterfly stamp.png");
  sharkS= loadImage("images/shark stamp.png");
  spiderS= loadImage("images/spider stamp.png");
  treeS= loadImage("images/tree stamp.png");
  turtleS = loadImage("images/turtle stamp.png");
  roseS= loadImage("images/rose stamp.png");
  //
};
