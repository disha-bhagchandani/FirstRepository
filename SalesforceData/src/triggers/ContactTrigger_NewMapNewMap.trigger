trigger ContactTrigger_NewMapNewMap on Contact (after insert,before update) {
 if (Trigger.isInsert) {

        //teger recordCount = Trigger.New.size();
        Map<Id,Contact> a=Trigger.NewMap;
        system.debug('NewMAp after isInsert Value'+a);
        // Call a utility method from another class

        //system.debug('hello'+recordCount);

    }

    else if (Trigger.isUpdate) {
        Map<Id,Contact> a=Trigger.NewMap;
        system.debug('NewMap before isUpdate Value'+a);
        //system.debug('Field will update');
    }
    else{
    system.debug('Not Working');
    }
 }