public class Dog extends AbstractAnimal {
    public Dog(Animal__c animalRecord) {
        super(animalRecord);
    }

    public List<String> getFeaturedProducts() {
        return DogProducts.getSelectedProducts();
    }
}
