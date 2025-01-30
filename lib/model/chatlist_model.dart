class ChatModel {
  int? id;
  String? title;
  double? price; // Nullable double
  String? description;
  String? category;
  String? image;
  Rating? rating;

  ChatModel({
    this.id,
    this.title,
    this.price,
    this.description,
    this.category,
    this.image,
    this.rating,
  });

  // Updated fromJson to handle int -> double conversion
  ChatModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    price = json['price'] != null
        ? (json['price'] is int ? (json['price'] as int).toDouble() : json['price'] as double)
        : null;  // Handle both int and double for price
    description = json['description'];
    category = json['category'];
    image = json['image'];
    rating = json['rating'] != null ? Rating.fromJson(json['rating']) : null;
  }

  get status => null;

  get data => null;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['price'] = price;
    data['description'] = description;
    data['category'] = category;
    data['image'] = image;
    if (rating != null) {
      data['rating'] = rating!.toJson();
    }
    return data;
  }
}

class Rating {
  double? rate; // Nullable double
  int? count;

  Rating({this.rate, this.count});

  // Updated fromJson to handle int -> double conversion for rate
  Rating.fromJson(Map<String, dynamic> json) {
    rate = json['rate'] != null
        ? (json['rate'] is int ? (json['rate'] as int).toDouble() : json['rate'] as double)
        : null;  // Handle both int and double for rate
    count = json['count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['rate'] = rate;
    data['count'] = count;
    return data;
  }
}
