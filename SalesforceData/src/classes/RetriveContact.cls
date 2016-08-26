public with sharing class RetriveContact {

 public void query()
 {
  list<contact> l1=new list<contact>();
  
    l1 = [select Email ,phone ,Birthdate from contact] ;
    system.debug(+l1);
 }
    
}