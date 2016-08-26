public with sharing class primeornot {
    
     public  void primenoCheck(integer num)
    {
    	
    	integer count,flag=0;
    	for(count = 2;count <= num/2;count++)
    	{
    		if(math.mod(num , count) == 0)
    		{
    			System.debug('number is not prime');
    			flag=1;
    			break;
    		}
    	}
    	if(flag == 0)
    	
    		System.debug('number is  prime');
    	
    }
    
}