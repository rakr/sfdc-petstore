public with sharing class AnimalTriggerHandler {
    public static void createBookingsOnCreation(Map<Id, Animal__c> animalsById) {
        List<Booking__c> newBookings = new List<Booking__c>();
        for (Animal__c animal : animalsById.values()) {
            Booking__c newBooking = new Booking__c();
            newBooking.Animal__c = animal.Id;
            newBooking.Type__c = 'Vet';
            if (animal.BirthDate__c.monthsBetween(Date.TODAY()) < 6){
                newBooking.Date__c = animal.BirthDate__c.addMonths(6);
            } else {
                newBooking.Date__c = (Date.TODAY()).addMonths(6);
            }
            newBookings.add(newBooking);
        }

        insert newBookings;
    }
}
