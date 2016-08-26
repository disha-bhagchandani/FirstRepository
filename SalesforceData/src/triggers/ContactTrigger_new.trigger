trigger ContactTrigger_new on Contact (after insert,before update) {
 if (Trigger.isInsert) {

        Integer recordCount = Trigger.New.size();

        // Call a utility method from another class

        system.debug('hello'+recordCount);

    }

    else if (Trigger.isUpdate) {

        system.debug('Field will update');
    }

}