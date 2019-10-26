// class customer stores info on the customer
class Customer
{
  String name;
  int [] seats;
  String email;
  int date;
  boolean confirmed;
  int next; // tracks when customer wants to move to next screen
  Plane flying; // stores the plane info 
  
  Customer()
  {
    name = " ";
    seats = new int [3];
    email = " ";
    date = 0;
    confirmed = false;
    next = 0;
    flying = new Plane();
  }
  
  void check_location()
  {
    
  }
  
}
    
