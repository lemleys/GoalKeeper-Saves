// Unit 3 Project, Created by Sarah Lemley

// Ball is the data type
// Instantiating an object
Ball ball;
Glove keeper;

// Setting up the background color and size of a computer screen 
PImage sball;
PImage glove;
int gx = width*7;
int gy = height*4;
int bx = 100;
int by = 100;
int r = 0; 
int w = 0;
int timeStart;

void setup()
{
  fullScreen();
  ball = new Ball();
  keeper = new Glove();
  glove = loadImage("gloves.png");
  sball = loadImage("soccerball.png");
  sball.resize(150, 150);
  glove.resize(200, 200);
  ball.SetImage(sball);
  keeper.SetImage(glove);
  timeStart = millis();
}

// Setting up what the project should draw 

void draw()
{
  background(255);
  ball.Draw();
  keeper.Draw();
  keeper.SetPosition(gx, gy);
  Play();
  Time();
}

// This will set up the keys being pressed to associate with the certain area of the goal
//    that a player will kick/hit on the physical structure

void keyPressed()
{
  if (key == CODED)
  {
    if(keyCode == LEFT)
    {
       gx = 50;
       gy = 50;
    }
    if(keyCode == UP)
    {
      gx = width/2;
      gy = 50;
    }
    if(keyCode == RIGHT)
    {
      gx = width-150;
      gy = 50;
    }
    if(keyCode == DOWN)
    {
      gx = 50;
      gy = height/2;
    }
  }
  if(key == 'a')
  {
    gx = 50;
    gy = height-150;
  }
  if(key == 'w')
  {
    gx = width - 150;
    gy = height/2;
  }
  if(key == 'd')
  {
    gx = width - 150;
    gy = height - 150;
  }
  if(key == 's')
  {
    BallPosition();
  }
}

//This will see if the area of the keys are being released, or are not pressed in the 
//    physical structure or on the keyboard

void keyReleased()
{
  if(key == CODED)
  {
    if(keyCode == UP)
    {
      gx = width/2;
      gy = height/2;
    }
    if(keyCode == LEFT);
    {
      gx = width/2;
      gy = height/2;
    }
    if(keyCode == RIGHT)
    {
      gx = width/2;
      gy = height/2;
    }
    if(keyCode == DOWN)
    {
      gx = width/2;
      gy = height/2;
    }
  }
  if(key == 'a')
  {
    gx = width/2;
    gy = height/2;
  }
  if(key =='d')
  {
    gx= width/2;
    gy = height/2;
  }
  if(key == 'w')
  {
    gx = width/2;
    gy = height/2;
  }
}

// Setting the position of the ball on the screen

void BallPosition()
{ 
  ball.SetPosition(bx,by);
  w = (int) random(0,7);
  if(w == 0)
  {
    bx = 50;
    by = 50;
    w = (int) random(0, 7);
  }
  if(w == 1)
  {
    bx = width/2;
    by = 50;
    w = (int) random(0, 7);
  }
  if(w == 2)
  {
    bx = width-150;
    by = 50;
    w = (int) random(0, 7);
  }
  if(w == 3)
  {
    bx = 50;
    by = height/2;
    w = (int) random(0, 7);
  }
  if(w == 4)
  {
    bx = width-150;
    by = height/2;
    w = (int) random(0, 7);
  }
  if(w == 5)
  {
    bx = 50;
    by = height-150;
    w = (int) random(0, 7);
  }
  if(w == 6)
  {
    bx = width-150;
    by = height-150;
    w = (int) random(0, 7);
  }
}

void Play()
{
  if(gx <= 200 && bx <= 200)
  {
    if(gy <= 200 && by <= 200)
    {  
      fill(0);
      textSize(100);
      text("Block", width/2, height);
      BallPosition();
    }
    if(gy == height/2 && by == height/2)
    {
      fill(0);
      textSize(100);
      text("Block", width/2, height);
      BallPosition();
    }
    if(gy >= height-200 && by >= height-200)
    {
      fill(0);
      textSize(100);
      text("Block", width/2, height);
      BallPosition();
    }
  }
  if(gx <= width/2 && bx <= width/2)
  {
    if(gy <= 200 && by <= 200)
    {
      fill(0);
      textSize(100);
      text("Block", width/2, height);
      BallPosition();
    }
    if(gy >= height-200 && by >= height-200)
    {
      fill(0);
      textSize(100);
      text("Block", width/2, height);
      BallPosition();
    }
  }
  if(gx <= width && bx <= width)
  {
    if(gy <= 200 && by <= 200)
    {
      fill(0);
      textSize(100);
      text("Block", width/2, height);
      BallPosition();
    }
    if(gy >= height-200 && by >= height-200)
    {
      fill(0);
      textSize(100);
      text("Block", width/2, height);
      BallPosition();
    }
  }
}

void Time()
{
  if(millis() - timeStart > 2000)
  {
    w = (int) random(0,7);
    timeStart = millis();
  }
}
    