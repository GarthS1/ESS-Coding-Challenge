Table available_planes;

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
  
  //Accessing the first class price of the second plane
  println(plane[1].getString("first_class_price"));
  
}
