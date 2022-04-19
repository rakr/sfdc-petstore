/**
 * @description Handles the different database events happening on the
 *              Animal__c SObject.
 */
public with sharing class BookingHandler implements AnimalTriggerHandler {

    /**
     * @description Automatically creates a new booking when an animal
     *              record is inserted in the database.
     *              The date of the booking is defined by the age of the
     *              animal that is being inserted.
     * @param animalsById Map of the animals records being inserted in
     *                    the database
     */
    public void handle(Map<Id, Animal__c> animalsById) {
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
