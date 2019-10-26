import static javax.swing.JOptionPane.*;

Customer cust1 = new Customer();
Plane p = new Plane();

Table available_planes;
PrintWriter output;
int n = 0;
PImage select_flight_screen;
//PImage input_screen;
PImage seat_map;
PImage confim_screen;
String [] destinations =  new String[12];

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
  
  //get all locations 
  get_unique_destinations(destinations, plane);

  //loads images in setup to make the program faster 
  select_flight_screen = loadImage("book_flight.png");
  //input_screen = loadImage(" ");
  seat_map = loadImage("airplane");
  
  //makes files for transiction and output log 
  output = createWriter("reciept");
  
  frameRate(60);
  fullScreen();
}


void draw() 
{
  //display start up screen 
  if(cust1.next == 0)
  {
    image(select_flight_screen,0,0);
    //draws screens
    
    //checks for mouse input
    if(mousePressed == true) 
    {
      check_location();
      output.println(cust1.flying.desentation);
    }
  }
  
  //display input area
  if(cust1.next == 1)
  {
    //image(input_screen,0,0);
    
    while(n == 0)
    {
      cust1.name = showInputDialog("Please enter your first and last name");
      if(cust1.name == null) 
      {
        showMessageDialog(null, "Input not allowed please try again.", "alert", ERROR_MESSAGE);
      }
      else
      {
        n++;
      }
    }
  
    
    while(n == 1)
    {
      cust1.email = showInputDialog("Please enter your email adress");
      if(cust1.email == null) 
      {
        showMessageDialog(null, "Input not allowed please try again.", "alert", ERROR_MESSAGE);
      }
      else
      {
        n++;
      }
    }
  }
    
    while(n == 2)
    {
      //print_calender();
    }    

  
  //display seat picking options
  if(cust1.next == 2)
  {
    if(cust1.flying.name == "BigLad9000")
    {
      
    }
    else 
    {
      
    }
  }
  
  //display confirmation screen
  if(cust1.next == 3) 
  {
    image(confim_screen,0,0);
    if(cust1.confirmed)
    {
      exit();
    }
  }
}

void check_location()
{
  int x = mouseX;
  int y = mouseY;
  
  int i = 0;
  /* while(i < 30; i++) 
   {
     if( x)
       if(y)
   }
   
   //cust1.flying.desentation = 
   */
}
 
 
void get_unique_destinations(String [] arr, TableRow [] planes)
{

  int i = 0;
  int j = 0;
  boolean check = true;
  
  while(i < planes.length)
  {
    for(int a = 0; a < arr.length; a++)
    {
      if((planes[i].getString("destination")).equals(arr[a]))
      {
        check = false;
      }
    }
    if(check)
    {
      arr[j] = planes[i].getString("destination");
      j++;
    }
    i++;
    check = true;
  }
}
  
  
    
 
