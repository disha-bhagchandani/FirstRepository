trigger ContactTrigger_newold on Contact (before insert,before update) {
 if (Trigger.isInsert) {

        //teger recordCount = Trigger.New.size();
        Contact[] a=Trigger.New;
        system.debug('New Value before isInsert'+a);
        // Call a utility method from another class

        //system.debug('hello'+recordCount);

    }

    else if (Trigger.isUpdate) {
        Contact[] a=Trigger.Old;
        system.debug('Old Value before isUpdate'+a);
        //system.debug('Field will update');
    }
    else{
    system.debug('Not Working');
    }

}