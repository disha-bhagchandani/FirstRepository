public with sharing class ReplaceA {
    public void stringReplace()
    {
    	String [] string_array = new List<String>();
    	
    	string_array.add('dipa');
    	string_array.add('abhi');
		string_array.add('ajin');
		for(Integer i=0; i<=2;i++)
		{
            
		String[] s2 = new List<String>();
            s2[i]= string_array[i].replaceAll('a', 'b');
		System.debug(+s2);
        }
    }
}