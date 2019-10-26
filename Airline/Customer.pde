// class customer stores info on the customer
class Customer
{
  String name;
  int [] seats;
  String email;
  String dest;
  int date;
  boolean confirmed;
  int vessel_number;
  int next; // tracks when customer wants to move to next screen
  Plane flying;
  
  Customer()
  {
    name = " ";
    seats = new int [3];
    email = " ";
    dest = " ";
    date = 0;
    confirmed = false;
    vessel_number = 0; 
    next = 0;
    flying = new Plane();
  }
  
  void check_location()
  {
    
  }
  
}
    
