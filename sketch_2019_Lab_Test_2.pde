ArrayList<Button> buttons;
Button activeButton;

void setup()
{
  size(600, 600);

  float radius = map(100, 0, 500, 0, width);

  buttons = new ArrayList<Button>();

  //Instantiate the buttons
  for (int i = 0; i < 10; i++)
  {
    float angle = map(i, 0, 10, 0, TWO_PI);
    float x = width/2 + sin(angle) * radius;
    float y = height/2 + -cos(angle) * radius;
    buttons.add(new Button(x, y, i));
  }
}

void draw()
{
  background(0);

  //Display the buttons
  for (Button b : buttons)
  {
    b.display();
    b.press();

    if (b.press() == true)
    {
      activeButton = b;
    }
  }
}

void mousePressed()
{
  if (activeButton.press() == true)
  {
    println(activeButton.number);
  } else if (activeButton == null)
  {
    return;
  }
}
