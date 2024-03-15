
  class CategoriesModel {
  int? id;
  String? name;
  String? slug;
  String? image;
  int? price;
  int? typeId;
  String? createdAt;
  String? updatedAt;

  CategoriesModel(
  {this.id,
  this.name,
  this.slug,
  this.image,
  this.price,
  this.typeId,
  this.createdAt,
  this.updatedAt});

  CategoriesModel.fromJson(Map<String, dynamic> json) {
  id = json['id'];
  name = json['name'];
  slug = json['slug'];
  image = json['image'];
  price = json['price'];
  typeId = json['type_id'];
  createdAt = json['created_at'];
  updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['id'] = this.id;
  data['name'] = this.name;
  data['slug'] = this.slug;
  data['image'] = this.image;
  data['price'] = this.price;
  data['type_id'] = this.typeId;
  data['created_at'] = this.createdAt;
  data['updated_at'] = this.updatedAt;
  return data;
  }
  }