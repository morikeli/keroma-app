class Category{
  final String categoryName;
  final String imagePath;

  Category({
    required this.categoryName,
    required this.imagePath
  });
}

List<Category> categories = [
  Category(categoryName: 'Drinks', imagePath: 'assets/imgs/drinks/milk.png'),
  Category(categoryName: 'Fruits', imagePath: 'assets/imgs/fruits/orange.png'),
  Category(categoryName: 'Juice', imagePath: 'assets/imgs/juice/grape-juice.png'),
  Category(categoryName: 'Vegetables', imagePath: 'assets/imgs/veggies/cauliflower.png'),

];