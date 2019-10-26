Customer cust1 = new Customer();
Plane p = new Plane();

PImage select_flight_screen;
PImage input_screen;
PImage seat_map1;
PImage seat_map2;
PImage confim_screen;

void setup() 
{
  frameRate(60);
  fullScreen();
  //loads images in setup to make the program faster 
  select_flight_screen = loadImage("  ");
  input_screen = loadImage(" ");
  seat_map1 = loadImage(" ");
  seat_map2 = loadImage(" ");
}

void draw() 
{
  //display start up screen 
  if(cust1.next == 0)
  {
    image(select_flight_screen,0,0);
    //checks for mouse input
    if(mousePressed == true) 
    {
      cust1.check_location();
    }
  }
  if(cust1.next == 1)
  {
    image(input_screen,0,0);
  }
  if(cust1.next == 2)
  {
    if(cust1.flying.name == "BigLad9000")
    {
      image(seat_map2,0,0);
    }
    else 
    {
      image(seat_map1,0,0);
    }
  }
  if(cust1.next == 3) 
  {
    image(confim_screen,0,0);
    if(cust1.confirmed)
    {
      exit();
    }
  }
}

  
  
    
 
