public class DefaultAnimal extends AbstractAnimal {
    public DefaultAnimal(Animal__c animalRecord) {
        super(animalRecord);
    }

    public List<String> getFeaturedProducts() {
        return OtherProducts.getSelectedProducts();
    }
}
