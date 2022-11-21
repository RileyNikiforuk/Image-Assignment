//Global Variables
int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
float topX, topY, topWidth, topHeight;
float bottomX, bottomY, bottomWidth, bottomHeight;
float picWidthAdjusted1=0.0, picHeightAdjusted1=0.0;
PImage pic1, pic2;
Boolean nightMode=false;
int tintDayMode=255, tintDayModeOpacity=50, tintRed=64, tintGreen=64, tintBlue=40, tintNightModeOpacity=85;
//
void setup()
{
  size(1280, 720);
  appWidth = width;
  appHeight = height;
  //
  //Population
  pic1 = loadImage("../images used/landscape/maxresdefault.jpg");
  pic2 = loadImage("../images used/landscape/stage-1-toyota-supra-turbo-is-just-a-slammed-appetizer-for-crazy-widebody-ideas-178819_1.jpg");
  backgroundImageX = appWidth*0;
  backgroundImageY = appHeight*0;
  backgroundImageWidth = appWidth-1;
  backgroundImageHeight = appHeight-1;
  topX = appWidth * 1/4;
  topY = appHeight * 1/20;
  topWidth = appWidth * 1/2;
  topHeight = appHeight * 13/20;
  bottomX = appWidth *1/2;
  bottomY = appHeight * 3/4;
  bottomWidth = appWidth * 1/4;
  bottomHeight = appHeight * 4/20;
  //
  int picWidth1 = 1280;//indian man
  int picHeight1 = 720;
  int picWidth2 = 1920;//grey/red slammed supra
  int picHeight2 = 1080;
  //
  float smallerDimension1, largerDimension1, imageWidthRatio1=0.0, imageHeightRatio1=0.0;
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
      println("STOP: image is too big for rectangle layout");
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
      println("STOP: image is too big for rectangle layout");
      exit();
    }
  }
  //
  rect( topX, topY, topWidth, topHeight );
  rect( bottomX, bottomY, bottomWidth, bottomHeight );
  //
  if ( nightMode == false ) tint(tintDayMode, tintDayModeOpacity); //Gray Scale, Day use: use 1/2 tint value for white (i.e. 128/256=1/2)
  if ( nightMode == true ) tint(tintRed, tintGreen, tintBlue, tintNightModeOpacity); //RGB: Night Mode
  image( pic1, backgroundImageX, backgroundImageY, picWidthAdjusted1, picHeightAdjusted1);
}//End setup
//
void draw()
{
  image(pic2, topX, topY, picWidthAdjusted2, picHeightAdjusted2);
  image(pic3, bottomX, bottomY, picWidthAdjusted3, picHeightAdjusted3);
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
