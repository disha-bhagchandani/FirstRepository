trigger AssociateAccount_Contact on Contact (before insert,before update) 
{

 Set<String> ContactDomainSet = new Set<String>();

 for(Contact cont : Trigger.New)
 {
      if(Cont.Email_Domain__c!=null)
      {
          ContactDomainSet.add(Cont.Email_Domain__c);
      }
      else
      {
          system.debug('Email not specified in Contact email');
      }
      system.debug(ContactDomainSet);
 }
 
 List<Account> AccountList =[Select Id,Email_Domain__c From Account Where Email_Domain__c LIKE : ContactDomainSet ];
 system.debug(AccountList);
 Map<String,Id> DomainMap = new Map<String,Id>();
 
 for(Account al : AccountList)
 {
     if(al.Email_Domain__c!=null)
     {
         DomainMap.put(al.Email_Domain__c,al.Id);
         system.debug(DomainMap);
     }
     else
     {
         system.debug('Account Domains are empty');
     }
 }
 
 
 for(Contact c: Trigger.New)
 {
     if(DomainMap.ContainsKey(c.Email_Domain__c))
     {
         
        c.AccountId = DomainMap.get(c.Email_Domain__c);
        system.debug(c.AccountId);
     }
     else
     {
         system.debug('Email not specified in Contact email');
     }
 }
 
}