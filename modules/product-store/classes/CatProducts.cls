public with sharing class CatProducts {
    public static List<String> getFeaturedProducts(String breed) {
        List<String> products = new List<String>();
        products.add('Pawever Pets');

        if (breed == 'Rag Doll') {
            products.add('Furminator - Long Hair Large Cat Metallic Purple Large');
        }

        return products;
    }
}
