trigger triggerForCampaignInLead on Lead (before insert, after update) {
    
    List<ID> LeadIds = New List<ID>();
    List<string> rsvpLead = New List<string>();

  for(Lead l : Trigger.new){

    if(l.Lead_RSVP__c!='')
    {
      LeadIds.add(l.Id);
      rsvpLead.add(l.Lead_RSVP__c);
    }
    else
    {
        
    }
  

  List<CampaignMember> cmList = [SELECT id, status ,CampaignMemberRSVP__c FROM CampaignMember WHERE LeadId in :LeadIds];

  for(CampaignMember cm : cmList)
  {
    if(cm.CampaignMemberRSVP__c==null)
    {
        cm.CampaignMemberRSVP__c=l.Lead_RSVP__c;
        system.debug('TriggerChecked'+cm.CampaignMemberRSVP__c);
    }
    else
    {
        //There will be no changes in Campaign RSVP as it already contains value in it
    }
  }

  update cmList;
}
}