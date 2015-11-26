// Unit 3 Project, Created by Sarah Lemley

// Ball is the data type
// Instantiating an object
Ball Kicker; 
Ball Keeper; 


// Setting up the background color and size of a computer screen 
PImage sball;
PImage glove;

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
  image(glove, width/2, height/2, 220, 220);
}

// This will set up the keys being pressed to associate with the certain area of the goal
//    that a player will kick/hit on the physical structure

void keyPressed()
{
  
}

//This will see if the area of the keys are being released, or are not pressed in the 
//    physical structure or on the keyboard

void keyReleased()
{
  
}