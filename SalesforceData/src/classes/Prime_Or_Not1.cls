public with sharing class Prime_Or_Not1 {
	
	public void prime(integer num)
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