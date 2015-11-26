// Unit 3 Project, Created by Sarah Lemley

// Ball is the data type
// Instantiating an object
Ball Kicker; 
Ball Keeper; 


// Setting up the background color and size of a computer screen 
PImage sball;
PImage glove;
int gx = width*7;
int gy = height*4;

void setup()
{
  fullScreen();
  Keeper = new Ball();
  Kicker = new Ball(); 
  sball = loadImage("soccerball.png");
  glove = loadImage("gloves.png");
}

// Setting up what the project should draw 

void draw()
{
  background(255);
  Kicker.Draw();
  Keeper.Draw();
  imageMode(CENTER);
  image(sball, 100, 100, 120, 120);
  image(glove, gx, gy, 220, 220);
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
  if(key == 'd')
  {
    gx = width - 100;
    gy = height/2;
  }
  if(key == 'w')
  {
    gx = width - 100;
    gy = height - 70;
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