class Product {
  int id;
  String name;
  String description;
  double price;
  String imageUrl;
  double rating;
  List<String> reviews;
  int stock;
  String category;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.rating,
    required this.reviews,
    required this.stock,
    required this.category,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'price': price,
      'imageUrl': imageUrl,
      'rating': rating,
      'reviews': reviews,
      'stock': stock,
      'category': category,
    };
  }

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      price: json['price'],
      imageUrl: json['imageUrl'],
      rating: json['rating'],
      reviews: List<String>.from(json['reviews']),
      stock: json['stock'],
      category: json['category'],
    );
  }
}