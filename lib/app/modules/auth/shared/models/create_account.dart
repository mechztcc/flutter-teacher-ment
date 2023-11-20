class CreateAccountModel {
  int? id;
  String? email;
  String? name;
  String? password;
  String? role;
  String? createdAt;
  String? updatedAt;

  CreateAccountModel(
      {this.id,
      this.email,
      this.name,
      this.password,
      this.role,
      this.createdAt,
      this.updatedAt});

  CreateAccountModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    name = json['name'];
    password = json['password'];
    role = json['role'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['email'] = this.email;
    data['name'] = this.name;
    data['password'] = this.password;
    data['role'] = this.role;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    return data;
  }
}
