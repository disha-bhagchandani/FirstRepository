public with sharing class Pallindrom {
    public void stringPalindromecheck( String original)
   {
      String reverse = ' ';
      original = 'madam';
     
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