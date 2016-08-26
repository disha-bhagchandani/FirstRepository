@isTest
public class testclassForOpp{
    public static testMethod void abc(){
    
    Date b = date.parse('8/19/2016');

    //Hardcoded Input is below
    Opportunity Opp = new Opportunity(Name='Dilip Kumar',StageName='Closed Won',CloseDate=b);
    
    //Inform SF That my test starts,it resets the governor limits
    Test.startTest();
    //
    
    
    insert Opp;
    system.debug('Cloned Successfully');
    Test.StopTest();
    system.assert(Opp.Name=='Dilip Kumar');
    
    list<Opportunity> CloneRecordList = [Select name,id from Opportunity where name='Dilip Kumar'];
    system.debug(CloneRecordList);
    system.assertEquals(CloneRecordList.Size(),2);
}
}