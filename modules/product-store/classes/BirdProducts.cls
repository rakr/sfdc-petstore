public with sharing class BirdProducts {
    public static List<String> getChosenProducts(Integer birdAgeInMonths) {
        List<String> products = new List<String>();

        products.add('Ts Budgie Snuggler Turquoise Medium');
        if (birdAgeInMonths > 12) {
            products.add('Jw Insight Comfy Perch Cross Small');
        }

        return products;
    }
}
