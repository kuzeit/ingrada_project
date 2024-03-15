   class ItemsModel {
  int? id;
  int? scopeId;
  int? typeId;
  int? prefernceId;
  int? prefernceValueId;
  int? sizeId;
  int? isEnablePost;
  int? likes;
  int? price;
  String? image;
  String? createdAt;
  String? updatedAt;
bool ?isLiked =false;
   ItemsModel(
  {this.id,
  this.scopeId,
  this.typeId,
  this.prefernceId,
  this.prefernceValueId,
  this.sizeId,
  this.isEnablePost,
  this.likes,
  this.price,
  this.image,
  this.createdAt,
  this.updatedAt,
  this.isLiked});
   ItemsModel.fromJson(Map<String, dynamic> json) {
   id = json['id'];
  scopeId = json['scope_id'];
  typeId = json['type_id'];
  prefernceId = json['prefernce_id'];
  prefernceValueId = json['prefernce_value_id'];
  sizeId = json['size_id'];
  isEnablePost = json['is_enable_post'];
  likes = json['likes'];
  price = json['price'];
  image = json['image'];
  createdAt = json['created_at'];
  updatedAt = json['updated_at'];
  }

  // Map<String, dynamic> toJson() {
  // final Map<String, dynamic> data = new Map<String, dynamic>();
  // data['id'] = this.id;
  // data['scope_id'] = this.scopeId;
  // data['type_id'] = this.typeId;
  // data['prefernce_id'] = this.prefernceId;
  // data['prefernce_value_id'] = this.prefernceValueId;
  // data['size_id'] = this.sizeId;
  // data['is_enable_post'] = this.isEnablePost;
  // data['likes'] = this.likes;
  // data['price'] = this.price;
  // data['image'] = this.image;
  // data['created_at'] = this.createdAt;
  // data['updated_at'] = this.updatedAt;
  // return data;
  // }
  }