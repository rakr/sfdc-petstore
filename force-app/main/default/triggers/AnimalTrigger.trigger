trigger AnimalTrigger on Animal__c (after insert) {
    Map<Id, Animal__c> newAnimals = (Map<Id, Animal__c>) Trigger.newMap;
    AnimalTriggerHandler.createBookingsOnCreation(newAnimals);
}
