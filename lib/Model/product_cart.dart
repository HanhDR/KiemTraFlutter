class ProductCart {
  late num id;
  late String title;
  late num price;
  late String description;
  late String category;
  late String image;
  late num sl;
  ProductCart(num id, String title, String description, String category,
      String image, num sl, num price) {
    this.id = id;
    this.title = title;
    this.description = description;
    this.category = category;
    this.image = image;
    this.sl = sl;
    this.price = price;
  }

  get getsl {
    return this.id;
  }

  set setsl(sl) {
    this.sl = sl;
  }
}