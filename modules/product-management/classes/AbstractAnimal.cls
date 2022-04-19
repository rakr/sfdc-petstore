public abstract class AbstractAnimal implements Animal {
    protected String name;
    protected String species;
    protected Date birthDate;

    public AbstractAnimal(Animal__c animalRecord) {

        if (animalRecord == null) {
            // animalRecord is a mandatory parameter
            throw new IllegalArgumentException('animal parameter cannot be null.');
        }

        this.name = animalRecord.AnimalName__c;
        this.birthDate = animalRecord.BirthDate__c;
    }

    public String getName() {
        return this.name;
    }

    public Date getBirthDate() {
        return this.birthDate;
    }

    public String getPersonalisedProduct() {
        if (isBornRecently()) {
            return 'Flowers - Congratulations';
        }

        return '';
    }

    private Boolean isBornRecently() {
        if (this.birthDate.monthsBetween(Date.today()) > 6) {
            return false;
        }

        return true;
    }
}
