class PreferenceValueModel {
  int? id;
  String? name;
  String ?slug;
  String ?image;
  int ?price;
  int ?prefernceId;
  String? createdAt;
  String? updatedAt;

  PreferenceValueModel(
      {this.id,
        this.name,
        this.slug,
        this.image,
        this.price,
        this.prefernceId,
        this.createdAt,
        this.updatedAt});

  PreferenceValueModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    image = json['image'];
    price = json['price'];
    prefernceId = json['prefernce_id'];
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
    data['prefernce_id'] = this.prefernceId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}