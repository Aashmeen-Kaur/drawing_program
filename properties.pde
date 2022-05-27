PFont font;                        //font placeholder
PImage previousFrame;              //Previous frame - updated on mouseRelease

color black = color(0, 100);       //color: black
color white = color(100, 100);     //color: white
color red = color(100, 100, 100);  //color: red
color cyan = color(50, 100, 100);  //color: cyan
color gray = color(40, 100);       //color: gray

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

int helpPanelFontSize = 12;        //font size of help panel

boolean drawAlphaBar = true;       //draw the alpha bar (brushColorBar3)
boolean displayPanel = true;       //displayPanel true --> Draw displayPanel
boolean helpPanel = false;         //display help screen
boolean fillGradientBG = false;    //fill the background with a gradient
boolean fillBackground = false;    //fill the background with the primary color
boolean clearBackground = false;   //clear the background - to white
boolean drawCircle = false;        //draw circle or not
boolean drawEllipse = false;       //draw ellipse or not
boolean drawSquare = false;        //draw square or not
boolean drawRectangle = false;     //draw rectangle or not
boolean drawTriangle = false;      //draw triangle or not
boolean drawLine = false;          //draw line or not
boolean lineClicked = false;       //line's first point
boolean randomColor = false;       //draw lines/shapes with random colors
