public class Bird extends AbstractAnimal {
    public Bird(Animal__c animalRecord) {
        super(animalRecord);
    }

    public List<String> getFeaturedProducts() {
        return BirdProducts.getChosenProducts(getAgeInMonths());
    }

    private Integer getAgeInMonths() {
        return this.birthDate.monthsBetween(Date.today());
    }
}
