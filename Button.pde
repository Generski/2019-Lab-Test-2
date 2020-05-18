class Button
{
  float x;
  float y;
  float diameter = random(20, 60);

  int number;

  float textSize = 20;

  Button(float tempX, float tempY, int tempNo)
  {
    x = tempX;
    y = tempY;
    number = tempNo;
  }

  void display()
  {
    stroke(255);
    noFill();
    ellipse(x, y, diameter, diameter);
    textSize(textSize);
    text(number, x - textSize/4, y + textSize/4);
  }

  boolean press()
  {
    float d = dist(mouseX, mouseY, x, y);

    if (d < diameter/2)
    {
      return true;
    } else
    {
      return false;
    }
  }
}
