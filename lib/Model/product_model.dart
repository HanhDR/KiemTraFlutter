class ProductModel{
  num? id;
  String? title;
  num? price;
  String? description;
  String? category;
  String? image;
  num? sl=1;
  ProductModel({this.id,
    this.title,
    this.description,
    this.category,
    this.price,
    this.image});
}