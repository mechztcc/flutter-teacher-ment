class LessonsModel {
  List<Lessons>? lessons;

  LessonsModel({this.lessons});

  LessonsModel.fromJson(Map<String, dynamic> json) {
    if (json['lessons'] != null) {
      lessons = <Lessons>[];
      json['lessons'].forEach((v) {
        lessons!.add(new Lessons.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.lessons != null) {
      data['lessons'] = this.lessons!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Lessons {
  int? id;
  int? ownerId;
  String? name;
  int? teamId;
  int? difficultyId;
  bool? isOpened;
  String? createdAt;
  String? updatedAt;

  Lessons(
      {this.id,
      this.ownerId,
      this.name,
      this.teamId,
      this.difficultyId,
      this.isOpened,
      this.createdAt,
      this.updatedAt});

  Lessons.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    ownerId = json['ownerId'];
    name = json['name'];
    teamId = json['teamId'];
    difficultyId = json['difficultyId'];
    isOpened = json['isOpened'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['ownerId'] = this.ownerId;
    data['name'] = this.name;
    data['teamId'] = this.teamId;
    data['difficultyId'] = this.difficultyId;
    data['isOpened'] = this.isOpened;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    return data;
  }
}
