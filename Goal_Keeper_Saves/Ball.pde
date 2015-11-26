// Created the class for the image of the ball and the speed of the ball 

class Ball
{
  //Setting the private functions for the class
  private int _x1;
  private int _x2;
  private int _y1;
  private int _y2;
  private int _speedX; 
  private PImage _img1; 
  private PImage _img2;
  
  //Setting up the default constructor
  Ball()
  {
    _x1 = 0;
    _x2 = width/2;
    _y1 = 0;
    _y2 = height/2;
    _img1 = null;
    _img2 = null;
    _speedX = 0;
  }
  
  //Sets the position of each image on the screen
  public void SetPosition1(int newX1, int newY1)
  {
    _x1 = newX1;
    _y1 = newY1;
  }
  
  public void SetPosition2(int newX2, int newY2)
  {
    _x2 = newX2;
    _y2 = newY2;
  }
  
  // Setting up the speed of the ball going into focus on the screen
  public void SetSpeed()
  {
    
  }
  
  // Error Checking to see if the image is there for the ball
  public void Draw()
  {
    if(_img1 != null)
    {
      image(_img1, _x1, _y1);
    }
    else
    {
      println("ERROR: Ball has no image!");
    }
    if(_img2 != null)
    {
      image(_img2, _x2, _y2);
    }
    else
    {
      println("ERROR: Gloves has no image!");
    }
  }
  
  // Seeing if the image and the area of where the player will hit the "ball"
  public boolean IsColliding(Ball other)
  {
    return false;
  }
}