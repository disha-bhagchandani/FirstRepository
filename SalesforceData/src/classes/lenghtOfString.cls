//4. Method to count the length of a string (not using length function) 

public with sharing class lenghtOfString {
	
     public void lenthofStr( String myString)
    {
	 
	 integer i = 0;
    try {
       		 while (true) {
           	 myString.charAt(i);
           	 i++;
        	}
        
    	}
        	
    catch (Exception e) 
    {
    	System.debug('length of string is:-'+i);
    }
}
}

//lenghtOfString p=new lenghtOfString();
//	p.lenthofStr('disha');