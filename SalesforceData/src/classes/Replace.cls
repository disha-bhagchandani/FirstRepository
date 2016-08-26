//3. Method to replace every occurrence of 'a' character from each string in an array (accept both character and array of strings as param)

public with sharing class Replace {
   
  public list<string>ls2 =new list<string>(); 
    
	public list<string> replacecharacter (list<string>listofstrings,string strwhat,string strwith)
	{
	 for (string s1 : listofstrings)
	 {
	 s1.replaceAll(strwith,strwhat);
	 ls2.add(s1);
	 system.debug(+ls2);
	 system.debug(s1);
	 }
	   return(ls2);
	 }
}

//Replace u = new Replace();
//list<String> l = new list<String>{'disha','asha'};
//u.replacecharacter(l,'s','a');