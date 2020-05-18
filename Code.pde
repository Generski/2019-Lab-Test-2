class Code
{
  float x;
  float y;
  
  int number = 0;
  
  float textSize = 20;
  
  Code(float tempX, float tempY)
  {
    x = tempX;
    y = tempY;
  }
  
  void display()
  {
    textSize(20);
    text(number, x, y);
  }
}
