public class AnimalFactory {
    public static Animal createAnimal(Animal__c animalRecord) {
        Animal returnedAnimal;
        switch on animalRecord.Species__c {
            when 'Dog' {
                returnedAnimal = new Dog(animalRecord);
            } when 'Cat' {
                returnedAnimal = new Cat(animalRecord);
            } when 'Bird' {
                returnedAnimal = new Bird(animalRecord);
            } when else {
                returnedAnimal = new DefaultAnimal(animalRecord);
            }
        }

        return returnedAnimal;
    }
}
