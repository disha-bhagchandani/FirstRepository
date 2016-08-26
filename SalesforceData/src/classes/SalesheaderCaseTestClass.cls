@isTest
public class SalesheaderCaseTestClass
{
     public static testMethod void  SalesHeaderTestMethod()
    {
       /* Date d = Date.parse(8/22/2016);
        EFT_Transaction_Status__c EFT = new EFT_Transaction_Status__c(Name='EFT5',
        Transaction_Date__c=d ,Transaction_Status__c='Open');
        
        insert e;
        
        Contact con = new Contact();
        con.
        insert con;
        
        Account A =new Account(Name='Account5');
        insert A; */
        
        
        
        SalesHeader__c SHeader = new SalesHeader__c(
        Name='Sales5',
        Bill_to_City__c='Nagpur',
        Bill_To_Customer__c='Disha',
        Bill_to_Postal_Code__c=445566,
        Bill_to_State__c='MS',
        Bill_to_Street__c='Wardhaman',
        Ship_to_City__c='Gondia',
        Ship_to_Postal_Code__c=667788,
        Ship_to_State__c='MP',
        Ship_to_Street__c='Murri',
        Status__c='Open',
        Total_Amount__c=70000,
        Transaction_Status__c='Open',
        S_lookup_contact__c='0032800000YQ0Up',
        EFT_Transaction_Status__c='a0W28000004u17m',
        S_Lookup_Account__c='0012800000nsMcX'
        
        );
        Test.StartTest();
        insert SHeader;
        Test.StopTest();
        List<Case> c = new   List<Case>([Select id,Owner_Details__c,CaseNumber, Priority,Open_Sales_Order__c,Order_Date__c,Sales_Order_Number__c,Type From Case]);
        //system.assertEquals(c.size(),1);
        system.debug('++++++++'+c);
        system.debug('*************SalesHeaderTestMethod Executed Successfully');
    }
    
    




}