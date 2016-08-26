@isTest
public class LeadCampaignMemberTestMethod
{
    public static testMethod void Leadtest()
    {
        Test.StartTest();
        Campaign CMemberObj =new Campaign(Name='CampTest');
        insert CMemberObj;
        system.debug('Campaign '+CMemberObj+ '  Inserted');
        
        Lead LeadObj = new Lead(LastName='LeadTest',Company='ESPL',Lead_RSVP__c='LeadTest Contains Value in RSVP Field',
        Status='Working-Contacted');
        
        // Lead LeadObj = new Lead(LastName='LeadTest',Company='ESPL',Lead_RSVP__c='LeadTest Contains Value in RSVP Field',
        //Status='Working-Contacted',CampaignMembers=CMemberObj.Id);
        

        
        insert LeadObj;
         system.debug('Lead '+LeadObj+ '  Inserted');
        
        
        CampaignMember CampaignMemberObj = [Select Name,Id ,CampaignMemberRSVP__c From  CampaignMember ];
        Test.StopTest();
        system.assertEquals(CampaignMemberObj.CampaignMemberRSVP__c,LeadObj.Lead_RSVP__c);
        system.debug('Tested_______'+CampaignMemberObj.CampaignMemberRSVP__c);
        
        
    }
}