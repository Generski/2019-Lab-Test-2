ArrayList<Button> buttons;
Button activeButton;

ArrayList<Code> sequence;

void setup()
{
  size(600, 600);

  //Buttons
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

  //Code
  sequence = new ArrayList<Code>();
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

  //Display the code
  for (int i = 0; i < 4; i++)
  {
    float x = width/5 + width/5 * i;
    float y = 50;
    sequence.add(new Code(x, y));
  }
  
  for(Code digit : sequence)
  {
    digit.display();
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
