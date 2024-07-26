class PopularProducts {
  final String productImage, productName;
  final double productPrice;

  PopularProducts({
    required this.productImage,
    required this.productName,
    this.productPrice = 0.0
  });
}

List<PopularProducts> popularProducts = [
  PopularProducts(
    productImage: 'assets/imgs/veggies/spinach.png',
    productName: 'Spinach',
    productPrice: 3.00,
  ),
  PopularProducts(
    productImage: 'assets/imgs/drinks/yogurt-plain.jpg',
    productName: 'Plain yogurt',
    productPrice: 190.00,
  ),
  PopularProducts(
    productImage: 'assets/imgs/fruits/orange.png',
    productName: 'Oranges (1kg)',
    productPrice: 120.00,
  ),
  PopularProducts(
    productImage: 'assets/imgs/juice/mango-juice.png',
    productName: 'Mango juice (250ml)',
    productPrice: 150.00,
  ),
  PopularProducts(
    productImage: 'assets/imgs/drinks/yogurt-strawberry.jpg',
    productName: 'Strawberry yogurt (500ml)',
    productPrice: 50.00,
  ),
  PopularProducts(
    productImage: 'assets/imgs/drinks/milk-2.png',
    productName: 'Milk (1ltr)',
    productPrice: 60.00,
  ),
];
