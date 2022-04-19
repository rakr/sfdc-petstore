public class Cat extends AbstractAnimal {
    private String breed;

    public Cat(Animal__c animalRecord) {
        super(animalRecord);
        this.breed = animalRecord.Breed__c;
    }

    public List<String> getFeaturedProducts() {
        return CatProducts.getFeaturedProducts(this.breed);
    }
}
