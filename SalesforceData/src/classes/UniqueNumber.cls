//5. Method to find only the unique numbers in an array (accept array as a parameter) Hint: Use list and set 

public with sharing class UniqueNumber {
    
      public void numberarray(list<Integer> lst)
    {
	 
	 list<Integer> mylist = new list<Integer>();
	 set<Integer> myset = new set<Integer>();	 
	 mylist.addAll(lst);      
     myset.addAll(mylist);   
     system.debug(+myset);
	}
}

//UniqueNumber u = new UniqueNumber();
//list<Integer> l = new list<Integer>{1,2,3,4,5,8,12,14};
//u.numberarray(l);