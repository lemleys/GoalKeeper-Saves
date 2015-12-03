// Created the class for the image of the ball and the speed of the ball 
class Glove
{
  //Setting the private functions for the class
  private int _x;
  private int _y;
  private PImage _img;
  
  //Setting up the default constructor
  Glove()
  {
    _x = 0;
    _y = 0;
    _img = null;
  }
  
  //Sets the position of the glove on the screen
  public void SetPosition(int newX, int newY)
  {
    _x = newX;
    _y = newY;
  }
  
  //Sets the Image for the glove
  public void SetImage(PImage img2)
  {
    _img = img2;
  }
  
  // Error Checking to see if the image is there for the ball
  public void Draw()
  {
    if(_img != null)
    {
      image(_img, _x, _y);
    }
    else
    {
      println("ERROR: Glove has no Image!");
    }
  }
  
  // Seeing if the image and the area of where the player will hit the "glove"
  public boolean IsColliding2(Glove other)
  {
    return false;
  }
}