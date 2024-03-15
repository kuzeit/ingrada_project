import 'package:engrada_project/data/model/itemsmodel.dart';

class DesignType {
  int? id;
  int? numPro;
  String? name;
  String? slug;
  String? image;
  int? price;
  String? createdAt;
  String? updatedAt;
  int? proprtiesCurrent;
  int? proprtiesnumber;
  List<ItemsModel>? items = [];



  DesignType(
      {this.id,
        this.numPro,
        this.name,
        this.slug,
        this.image,
        this.price,
        this.createdAt,
        this.updatedAt,
        this.proprtiesCurrent,
        this.proprtiesnumber,
      this.items});

  DesignType.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    numPro = json['num_pro'];
    name = json['name'];
    slug = json['slug'];
    image = json['image'];
    price = json['price'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    proprtiesCurrent = json['proprties_current'];
    proprtiesnumber = json['proprtiesnumber'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['num_pro'] = this.numPro;
    data['name'] = this.name;
    data['slug'] = this.slug;
    data['image'] = this.image;
    data['price'] = this.price;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['proprties_current'] = this.proprtiesCurrent;
    data['proprtiesnumber'] = this.proprtiesnumber;
    return data;
  }
}
