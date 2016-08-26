@isTest
public class TestClassAssociateContact
{

    public static testMethod void FirstCase()
    {
         Account Acc = new Account(Name='Pooja Merchant',Email_Domain__c='eternussolutions.com');
         insert Acc;
         system.debug('Account System Debug'+Acc);
         
         Contact con = new Contact(LastName='Dilip Kumar',Email='Dilip@eternussolutions.com');
         insert con;
         system.debug('Contact System Debug'+con.AccountId);
         
         con.LastName='kumar';
         update con;
         contact con1 =[Select Id,name,AccountId From Contact];
         system.assertEquals(con1.AccountId,Acc.Id);
         system.debug('ContactlookupAccontId='+con1.AccountId+'Account ID'+Acc.Id);
    }
    
    public static testMethod void SecondCase()
    {
         Account Acc = new Account(Name='Shreyas Merchant');
         insert Acc;
         system.debug('Account System Debug'+Acc);
         
         Contact con = new Contact(LastName='Sachin Pawar',Email='Sachin@gmail.com');
         insert con;
         system.debug('Contact System Debug'+con.AccountId);
         
         con.LastName='Pawar';
         update con;
         contact con1 =[Select Id,name,AccountId From Contact];
         system.assertNotEquals(con1.AccountId,Acc.Id);
    }
    
    public static testMethod void ThirdCase()
    {
         Account Acc = new Account(Name='Paresh Tanna',Email_Domain__c='Dilip@yahoo.com');
         insert Acc;
         system.debug('Account System Debug'+Acc);
         
         Contact con = new Contact(LastName='haresh Punjabi');
         insert con;
         system.debug('Contact System Debug'+con.AccountId);
         
         con.LastName='Pawar';
         update con;
         contact con1 =[Select Id,name,AccountId From Contact];
         system.assertNotEquals(con1.AccountId,Acc.Id);
    }
    public static testMethod void FourthCase()
    {
         Account Acc = new Account(Name='Nitin Tanna');
         insert Acc;
         system.debug('Account System Debug'+Acc);
         
         Contact con = new Contact(LastName='Rohit');
         insert con;
         system.debug('Contact System Debug'+con.AccountId);
         
         con.LastName='Pawar';
         update con;
         contact con1 =[Select Id,name,AccountId From Contact];
         system.assertNotEquals(con1.AccountId,Acc.Id);
    }
    
}