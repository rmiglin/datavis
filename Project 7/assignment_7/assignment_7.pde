String id;
String cardColor;
color green;

//Timer code begins
String[] fontlist = PFont.list();
int time, frame, delta =1;

PFont courier;
String timeDisplay = "Time Passed: ";
//Timer code ends

Card c1;

void setup(){
  green = color(#228B22);
  size(500,500);
  
  c1 = new Card("A1", "0000FF");
  
  //Timer code begins
  courier = createFont("courier",32);
  textFont(courier);
  //Timer code ends
}

void draw(){
  c1.display();
  background(green);
  
  //Timer code begins
  frame++;
  if (frame == 60)
  {
    time = time + delta;
    frame = 0;
  }
  text(timeDisplay+nf(time,2),width-300,32);
  //Timer code ends
  
}

void keyPressed()

//Timer code begins
{
  if (key == ' ' && delta == 1)
  {
    delta = 0;
  }
  else if (key == ' ' && delta == 0)
  {
    delta = 1;
  }
  else if (key == 'r')
  {
    time = 0;
  }
  //Timer code ends
  
}