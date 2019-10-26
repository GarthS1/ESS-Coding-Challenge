Customer cust1 = new Customer();
Plane p = new Plane();
Table available_planes;

PImage select_flight_screen;
PImage input_screen;
PImage seat_map1;
PImage seat_map2;
PImage confim_screen;

void setup() 
{
  available_planes = loadTable("departures.csv", "header");
  TableRow [] plane = new TableRow [30];
  
  //Loads information of each available plane (e.x. plane type)
  //into an array with each array element corresponding to each available plane
  for(int i = 0; i < available_planes.getRowCount(); i++)
  {
    plane[i] = available_planes.getRow(i);
  }
  
  //loads images in setup to make the program faster 
  select_flight_screen = loadImage("  ");
  input_screen = loadImage(" ");
  seat_map1 = loadImage(" ");
  seat_map2 = loadImage(" ");
  
  frameRate(60);
  fullScreen();
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
  
  //display input area
  if(cust1.next == 1)
  {
    image(input_screen,0,0);
  }
  
  //display seat picking options
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
  
  //display confirmation screen
  if(cust1.next == 3) 
  {
    image(confim_screen,0,0);
    if(cust1.confirmed)
    {
      //FileOutputStream file = createOutput(cust1.name + "reciept");
      //output.println(" ");
      exit();
    }
  }
}

  
  
    
 
