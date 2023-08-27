class Product {
  int id;
  String name;
  int stock;
  String description;
  String pathImage;
  String pathModele;

  Product(
      {required this.id,
      required this.name,
      required this.stock,
      required this.description,
      required this.pathImage,
      required this.pathModele});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      name: json['libelle'],
      stock: json['stock'],
      description: json['description'],
      pathImage: json['pathImage'],
      pathModele: json['pathModele']
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'stock': stock,
      'description': description,
      'pathImage': pathImage,
      'pathModele': pathModele,
    };
  }
}
