trigger SalesheaderTriggerToCreateCase on SalesHeader__c (before insert,before update) {

    Case c = new Case();
    
     //List<SalesHeader__c> e = [SELECT SalesHeader__c.Name,(SELECT EFT_Transaction_Status__c.Id, EFT_Transaction_Status__c.Name ,EFT_Transaction_Status__c.Transaction_Date__c
                        // FROM SalesHeader__r)
                         //from SalesHeader__c];
     
     
    // [Select Id,name,Transaction_Date__c,
    // Transaction_Status__c From SalesHeader__c.EFT_Transaction_Status__c];    
    for (SalesHeader__c s: Trigger.New) {
    
   
    
             if( s.Status__c == 'Open' && s.Pick_Status__c == 'Open' && s.Total_Amount__c > 300 )
                  {
                    if ( s.Bill_to_Street__c != s.Ship_to_Street__c
                         ||  s.Bill_to_City__c !=  s.Ship_to_City__c
                         ||  s.Bill_to_Postal_Code__c  !=  s.Ship_to_Postal_Code__c
                         ||  s.Bill_to_State__c !=  s.Ship_to_State__c ) 
                         
                         {
                             
                            List<Case> cases = new List<Case>();
                            c.AccountId=s.S_Lookup_Account__c;
                            c.ContactId =s.S_lookup_contact__c; 
                            //c.RecordType ='assignment';
                            c.Origin = 'Internal';
                            c.Owner_Details__c   = 'Unable to Cross Ship Queue';
                            c.Reason = 'Unable to Cross Ship';
                            
                            c.Priority ='Medium';
                            c.Status='New';
                            c.Subject = c.Type;
                            c.Type= 'Unable to Cross Ship';
                            c.Open_Sales_Order__c=s.Id;
                            //c.Transaction_Status__c=e.Transaction_Status__c;
                            c.Sales_Order_Number__c=s.Name;
                            //c.Order_Date__c=e.Transaction_Date__c;
                            cases.add(c);       
                          }   
                   }
        }
        insert c;
}