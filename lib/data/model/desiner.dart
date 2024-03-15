class Designer {
  int? id;
  String? username;
  String? slug;
  String? fullname;
  String? avatar;
  int? isActive;
  int? isDeleted;
  int? numberTasks;
  Null? numberTasksProgress;
  int? categoryId;
  String? category;
  String? email;
  Null? emailVerifiedAt;
  String? createdAt;
  String? updatedAt;
  int? isSuperAdmin;

  Designer(
      {this.id,
        this.username,
        this.slug,
        this.fullname,
        this.avatar,
        this.isActive,
        this.isDeleted,
        this.numberTasks,
        this.numberTasksProgress,
        this.categoryId,
        this.category,
        this.email,
        this.emailVerifiedAt,
        this.createdAt,
        this.updatedAt,
        this.isSuperAdmin});

  Designer.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    slug = json['slug'];
    fullname = json['fullname'];
    avatar = json['avatar'];
    isActive = json['is_active'];
    isDeleted = json['is_deleted'];
    numberTasks = json['number_tasks'];
    numberTasksProgress = json['number_tasks_progress'];
    categoryId = json['category_id'];
    category = json['category'];
    email = json['email'];
    emailVerifiedAt = json['email_verified_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    isSuperAdmin = json['is_super_admin'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['username'] = this.username;
    data['slug'] = this.slug;
    data['fullname'] = this.fullname;
    data['avatar'] = this.avatar;
    data['is_active'] = this.isActive;
    data['is_deleted'] = this.isDeleted;
    data['number_tasks'] = this.numberTasks;
    data['number_tasks_progress'] = this.numberTasksProgress;
    data['category_id'] = this.categoryId;
    data['category'] = this.category;
    data['email'] = this.email;
    data['email_verified_at'] = this.emailVerifiedAt;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['is_super_admin'] = this.isSuperAdmin;
    return data;
  }
}