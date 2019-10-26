import java.util.*;
Table available_planes;

void setup()
{ 
  available_planes = loadTable("departures.csv", "header");
  TableRow [] plane = new TableRow [12];
  
  //Loads information of each available plane (e.x. plane type)
  //into an array with each array element corresponding to each available plane
  for(int i = 0; i < available_planes.getRowCount(); i++)
  {
    plane[i] = available_planes.getRow(i);
  }
  
  //Accessing the first class price of the second plane
  println(plane[1].getString("first_class_price"));
  
  String [] destinations = new String [12];
  get_unique_destinations(destinations, plane);
  
  //for(int i = 0; (i < destinations.length) && (destinations[i] != null); i++)
  //{
    //println(destinations[i]);
  //}
  
  String input = "YYC";
  Date [] available_times = new Date [12];
  get_available_times(available_times, plane, input);
  
  for(int i = 0; (i < available_times.length) && (available_times[i] != null); i++)
  {
    println(available_times[i]);
  }
  
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

void get_available_times(Date [] date, TableRow [] planes, String dest)
{
  int j = 0;
  for(int i = 0; i < planes.length; i++)
  {
    if((planes[i].getString("destination")).equals(dest))
    {
      date[j] = new Date(planes[i].getInt("time")*1000);
      j++;
    }
  }
}
