//Global Variables
int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
float backgroundImageX2, backgroundImageY2, backgroundImageWidth2, backgroundImageHeight2;
float textX1, textY1, textX2, textY2;
float topX, topY, topWidth, topHeight;
float bottomX, bottomY, bottomWidth, bottomHeight;
float picWidthAdjusted1=0.0, picHeightAdjusted1=0.0;
PImage pic1, pic2;
Boolean nightMode=false;
int tintDayMode=255, tintDayModeOpacity=50, tintRed=64, tintGreen=64, tintBlue=40, tintNightModeOpacity=85;
PFont font;
//
void setup()
{
  size(1200, 800);
  appWidth = width;
  appHeight = height;
  //
  //Population
<<<<<<< HEAD
  pic1 = loadImage("../images used/landscape/maxresdefault.jpg");
  pic2 = loadImage("../images used/landscape/stage-1-toyota-supra-turbo-is-just-a-slammed-appetizer-for-crazy-widebody-ideas-178819_1.jpg");
=======
  pic1 = loadImage("../images used/slammedsupramk5.jpg");
  pic2 = loadImage("../images used/slammed gtr.jpg");
  //pic3 = loadImage("../images used/slammed gtr.jpg");
  font = loadFont("HarlowSolid-48.vlw");
>>>>>>> a3dd843ee26935cdac0c15c8e132d594d7e257b5
  backgroundImageX = appWidth*0;
  backgroundImageY = appHeight*0;
  backgroundImageWidth = appWidth-1;
  backgroundImageHeight = appHeight-1;
  backgroundImageX2 = appWidth * 11/20;
  backgroundImageY2 = appHeight * 0/20;
  backgroundImageWidth2 = appWidth * 9/20;
  backgroundImageHeight2 = appHeight * 8/20;
  bottomX = appWidth * 11/20;
  bottomY = appHeight * 0/20;
  bottomWidth = appWidth * 9/20;
  bottomHeight = appHeight * 8/20;
  topX = appWidth * 1/20;
  topY = appHeight * 4/6;
  topWidth = appWidth * 6/20;
  topHeight = appHeight * 6/20;
  textX1 = appWidth * 2/20;
  textY1 = appHeight * 13/20;
  textX2 = appWidth *13/20;
  textY2 = appHeight * 9/20;
  //
<<<<<<< HEAD
  int picWidth1 = 1280;//indian man
  int picHeight1 = 720;
  int picWidth2 = 1920;//grey/red slammed supra
  int picHeight2 = 1080;
  //
  float smallerDimension1, largerDimension1, imageWidthRatio1=0.0, imageHeightRatio1=0.0;
=======
  int picWidth1 = 1706;//slammed supra mk5
  int picHeight1 = 960;
  int picWidth2 = 1080;//slammed nissan gtr
  int picHeight2 = 1344;
  //int picWidth3 = 2121;//black slammed supra
  //int picHeight3 = 3771;
  //
  float smallerDimension1, largerDimension1, imageWidthRatio1=0.0, imageHeightRatio1=0.0;
  float smallerDimension2, largerDimension2, imageWidthRatio2=0.0, imageHeightRatio2=0.0;
>>>>>>> a3dd843ee26935cdac0c15c8e132d594d7e257b5
  if ( picWidth1 >= picHeight1 ) {
    largerDimension1 = picWidth1;
    smallerDimension1 = picHeight1;
    //
    picWidthAdjusted1 = backgroundImageWidth;
    imageHeightRatio1 = smallerDimension1 / largerDimension1;
    picHeightAdjusted1 = picWidthAdjusted1 * imageHeightRatio1;
    //
    if ( picHeightAdjusted1 > backgroundImageHeight ) {
    println(picHeightAdjusted1, backgroundImageHeight);
      println("STOP: image #1 width is too big for rectangle layout");
      exit();
    }
  } else {
    largerDimension1 = picHeight1;
    smallerDimension1 = picWidth1;
    //
    picHeightAdjusted1 = backgroundImageHeight;
    imageWidthRatio1 = smallerDimension1 / largerDimension1;
    picWidthAdjusted1 = picHeightAdjusted1 * imageWidthRatio1;
    if ( picWidthAdjusted1 > backgroundImageWidth ) {
      println("STOP: image #1 height is too big for rectangle layout");
      exit();
    }
  }
<<<<<<< HEAD
=======
    if ( picWidth2 >= picHeight2 ) {
    largerDimension2 = picWidth2;
    smallerDimension2 = picHeight2;
    //
    picWidthAdjusted2 = topWidth;
    imageHeightRatio2 = smallerDimension2 / largerDimension2;
    picHeightAdjusted2 = picWidthAdjusted2 * imageHeightRatio2;
    //
    if ( picHeightAdjusted2 > topHeight ) {
      println("STOP: image #2 width is too big for rectangle layout");
      exit();
    }
  } else {
    largerDimension2 = picHeight2;
    smallerDimension2 = picWidth2;
    //
    picHeightAdjusted2 = topHeight;
    imageWidthRatio2 = smallerDimension2 / largerDimension2;
    picWidthAdjusted2 = picHeightAdjusted2 * imageWidthRatio2;
    if ( picWidthAdjusted2 > topWidth ) {
      println("STOP: image #2 height is too big for rectangle layout");
      exit();
    }
  }
>>>>>>> a3dd843ee26935cdac0c15c8e132d594d7e257b5
  //
  rect( topX, topY, topWidth, topHeight );
  //rect( bottomX, bottomY, bottomWidth, bottomHeight );
  //
  if ( nightMode == false ) tint(tintDayMode, tintDayModeOpacity); //Gray Scale, Day use: use 1/2 tint value for white (i.e. 128/256=1/2)
  if ( nightMode == true ) tint(tintRed, tintGreen, tintBlue, tintNightModeOpacity); //RGB: Night Mode
  image( pic1, backgroundImageX, backgroundImageY, picWidthAdjusted1, picHeightAdjusted1);
}//End setup
//
void draw()
{
  image(pic2, topX, topY, picWidthAdjusted2, picHeightAdjusted2);
  //image(pic3, bottomX, bottomY, bottomWidth, bottomHeight);
  image(pic2, backgroundImageX2, backgroundImageY2, backgroundImageWidth2, backgroundImageHeight2);
  text("Without Aspect Ratio", textX2, textY2);
  fill(0);
  textSize(30);
  text("With Aspect Ratio", textX1, textY1);
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
  //  
  if ( mouseButton == LEFT) {
    nightMode = true;
    rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
    tint(64, 64, 40, 85); //RGB: Night Mode
    image( pic1, backgroundImageX, backgroundImageY, picWidthAdjusted1, picHeightAdjusted1);
  }
  if ( mouseButton == RIGHT ) {
    nightMode = false;
    rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
    tint(255, 50);
    image(pic1, backgroundImageX, backgroundImageY, picWidthAdjusted1, picHeightAdjusted1);
  }
}//End mousePressed
//
//End Main Program
