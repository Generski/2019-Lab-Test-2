class Button
{
  float x;
  float y;
  float diameter = random(20, 60);
  
  Button(float tempX, float tempY)
  {
    x = tempX;
    y = tempY;
  }
  
  void display()
  {
    stroke(255);
    noFill();
    ellipse(x, y, diameter, diameter);
  }
}
