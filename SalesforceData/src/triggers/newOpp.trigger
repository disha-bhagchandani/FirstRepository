trigger newOpp on Opportunity (before update,after insert) {

    if(checkRecursive.runOnce())

    {
        List<Opportunity> clonedRecords = new List<Opportunity> ();
        Opportunity newOpp;
        for(Opportunity o : Trigger.new)
        {
        newOpp = o.clone(false, false, false, false);
        clonedRecords.add(newOpp);
        }
        
        if (clonedRecords.size() > 0)
        insert clonedRecords;
        
    }
}