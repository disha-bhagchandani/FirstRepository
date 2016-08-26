//2. Accept string as a parameter and print whether it is a palindrome or not 

public with sharing class pallindromOrNot {
    
    public void stringPalindromecheck( String original)
   {
      String reverse = ' ';
      //original = 'madam';
     
      integer length = original.length();
 
      for ( integer i = length - 1; i >= 0; i-- )
      {
         reverse = reverse + original.charAt(i);
      }
      if (original.equals(reverse))
         System.debug('Entered string is a palindrome');
      else
         System.debug('Entered string is not a palindrome');
 
   }  
}
//pallindromOrNot p=new pallindromOrNot();
//p.stringPalindromecheck('disha');