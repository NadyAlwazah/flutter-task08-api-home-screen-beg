// ignore_for_file: public_member_api_docs, sort_constructors_first

class ProductModel {
  final int id;
  final String image;
  final String title;
  final double price;

  ProductModel({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'image': image,
      'title': title,
      'price': price,
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> data) {
    return ProductModel(
      id: data['id'] ?? 0,
      image: data['image'] ?? "",
      title: data['title'] ?? "",
      price: (data['price'] as num).toDouble(),
    );
  }
}
