import 'dart:io';

class Order {
  int? id;
  int? customerId;
  int? itemId;
  String? description;
  int? isIdea =0;
  int? isAccept;
  int? isEnternal;
  int? isVisualIdentity;
  int? primaryPrice;
  int? finalPrice;
  String? type;
  String? title;
  String? scope;
  List? colors =[];
  int? numberPages;
  List? fonts =[];

   String? pereferce;
  String? value;
  String? file;
  File? image;
  int? isOrderDesigner;
  int? designerId;
  int? sizeId;
  String? limitDate;
  String? expectedLimitDate;
  String? status;
  String? notes;
  int? points;
  String? createdAt;
  String? updatedAt;
  File? fileDesigner;
  int? isPublishDesignerFile;
  int? simillerItemId;
  bool? isSimilar =false;
  int ?preferenceId;
int ? typeId;
String? designerName ;
String ?idea ;
String ?visualIdentity ;

  Order(
      {this.id,
        this.customerId,
        this.itemId,
        this.description,
        this.isIdea,
        this.isAccept,
        this.isEnternal,
        this.isVisualIdentity,
        this.primaryPrice,
        this.finalPrice,
        this.type,
        this.title,
        this.scope,
        this.colors,
        this.numberPages,
        this.fonts,
        this.pereferce,
        this.value,
        this.file,
        this.image,
        this.isOrderDesigner,
        this.designerId,
        this.sizeId,
        this.limitDate,
        this.expectedLimitDate,
        this.status,
        this.notes,
        this.points,
        this.createdAt,
        this.updatedAt,
        this.fileDesigner,
        this.isPublishDesignerFile,
        this.simillerItemId
      ,this.isSimilar
      ,this.preferenceId
      ,this.typeId
      , this.designerName
      ,this.idea
     ,this.visualIdentity
      });

  Order.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    customerId = json['customer_id'];
    itemId = json['item_id'];
    description = json['description'];
    isIdea = json['is_idea'];
    isAccept = json['is_accept'];
    isEnternal = json['is_enternal'];
    isVisualIdentity = json['is_visual_identity'];
    primaryPrice = json['primary_price'];
    finalPrice = json['final_price'];
    type = json['type'];
    title = json['title'];
    scope = json['scope'];
    colors = json['colors'];
    numberPages = json['number_pages'];
    fonts = json['fonts'];
    pereferce = json['pereferce'];
    value = json['value'];
    file = json['file'];
    image = json['image'];
    isOrderDesigner = json['is_order_designer'];
    designerId = json['designer_id'];
    sizeId = json['size_id'];
    limitDate = json['limit_date'];
    expectedLimitDate = json['expected_limit_date'];
    status = json['status'];
    notes = json['notes'];
    points = json['points'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    fileDesigner = json['file_designer'];
    isPublishDesignerFile = json['is_publish_designer_file'];
    simillerItemId = json['similler_item_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['is_idea'] = 0;
    data['primary_price'] = this.primaryPrice;
    data['final_price'] = this.finalPrice;
    data['type'] = this.type;
    data['title'] = this.title;
    data['expected_limit_date'] = "2023-06-22";

    data['customer_id'] = this.customerId;
     data['item_id'] = this.itemId;
    data['description'] = this.description;
    data['is_visual_identity'] = this.isVisualIdentity;
    data['scope'] = this.scope;
     data['colors'] = this.colors;
     data['number_pages'] = this.numberPages;
     data['fonts'] = this.fonts;
    data['pereferce'] = this.pereferce;
     data['file'] = this.file;
     data['image'] = this.image;
     data['is_order_designer'] = this.isOrderDesigner;
    data['designer_id'] = this.designerId;
     data['size_id'] = this.sizeId;
     data['file_designer'] = this.fileDesigner;
     data['similler_item_id'] = this.simillerItemId;




     data['value'] = this.value;

    data['id'] = this.id;

    /////data['is_accept'] = this.isAccept;
    data['is_enternal'] = this.isEnternal;
    data['is_publish_designer_file'] = this.isPublishDesignerFile;
    data['limit_date'] = this.limitDate;
    data['status'] = "this.status";
    data['notes'] = this.notes;
    data['points'] = this.points;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;

    return data;
  }
}
