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
float w = 0;

void setup()
{
  fullScreen();
  ball = new Ball();
  keeper = new Glove();
  glove = loadImage("gloves.png");
  sball = loadImage("soccerball.png");
  imageMode(CENTER);
  ball.SetImage(sball);
  keeper.SetImage(glove);
  keeper.SetPosition(gx, gy);
}

// Setting up what the project should draw 

void draw()
{
  background(255);
  ball.Draw();
  keeper.Draw();
  Play();
}

// This will set up the keys being pressed to associate with the certain area of the goal
//    that a player will kick/hit on the physical structure

void keyPressed()
{
  if (key == CODED)
  {
    if(keyCode == LEFT)
    {
       gx = 100;
       gy = 100;
    }
    if(keyCode == UP)
    {
      gx = width/2;
      gy = 100;
    }
    if(keyCode == RIGHT)
    {
      gx = width-100;
      gy = 100;
    }
    if(keyCode == DOWN)
    {
      gx = 100;
      gy = height/2;
    }
  }
  if(key == 'a')
  {
    gx = 100;
    gy = height-70;
  }
  if(key == 'w')
  {
    gx = width - 100;
    gy = height/2;
  }
  if(key == 'd')
  {
    gx = width - 100;
    gy = height - 70;
  }
  if(key == 's')
  {
    BallPosition();
    w = random(0,7);
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
  if(key == 's')
  {
    BallPosition();
  }
}

// Setting the position of the ball on the screen

void BallPosition()
{ 
  ball.SetPosition(bx,by);
  if(w == 0)
  {
    bx = 100;
    by = 100;
  }
  if(w == 1)
  {
    bx = width/2;
    by = height/0 +100;
  }
  if(w == 2)
  {
    bx = width - 100;
    by = height/0 + 100;
  }
  if(w == 3)
  {
    bx = width/0 +100;
    by = height/2;
  }
  if(w == 4)
  {
    bx = width - 100;
    by = height/2;
  }
  if(w == 5)
  {
    bx = width/0 + 100;
    by = height - 100;
  }
  if(w == 6)
  {
    bx = width - 100;
    by = height - 100;
  }
}

void Play()
{
  if(gx == 0 && bx == 0)
  {
    
  }
}
    