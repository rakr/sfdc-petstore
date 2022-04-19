public class ProductSelector implements AnimalTriggerHandler {
    public void handle(Map<Id, Animal__c> animalsById) {

        for (Animal__c a : animalsById.values()) {
            Animal animal = AnimalFactory.createAnimal(a);
            displayFeaturedProducts(animal);
        }
    }

    private void displayFeaturedProducts(Animal animal) {
        System.debug('##### Pet Name:' + animal.getName());
        for (String message : animal.getFeaturedProducts()) {
            System.debug('######## Featured Product:' + message);
        }
        System.debug('######## Personalised message:' + animal.getPersonalisedProduct());

    }
}
