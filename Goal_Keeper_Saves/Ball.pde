// Created the class for the image of the ball and the speed of the ball 

class Ball
{
  //Setting the private functions for the class
  private int _x;
  private int _y;
  private int _w;
  private int _h; 
  private int _speedX; 
  private String _fName1; 
  private String _fName2;
  private PImage _img1; 
  private PImage _img2;
  
  //Setting up the default constructor
  Ball()
  {
    _x = 0;
    _y = 0;
    _w = 0;
    _h = 0;
    _fName1 = "";
    _fName2 = "";
    _img1 = null;
    _img2 = null;
    _speedX = 0;
  }
  
  // Setting up the image for the ball
  public void SetImage()
  {
    
  }
  
  // Setting up the speed of the ball going into focus on the screen
  public void SetSpeed()
  {
    
  }
  
  // Error Checking to see if the image is there for the ball
  public void Draw()
  {
    
  }
  
  // Seeing if the image and the area of where the player will hit the "ball"
  public boolean IsColliding(Ball other)
  {
    return false;
  }
}