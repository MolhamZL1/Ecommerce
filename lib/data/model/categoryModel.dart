class Category {
  String? id;
  String? image;
  String? name;
  String? nameAr;

  Category({this.id, this.image, this.name, this.nameAr});

  Category.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
    name = json['name'];
    nameAr = json['name_ar'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['image'] = this.image;
    data['name'] = this.name;
    data['name_ar'] = this.nameAr;
    return data;
  }
}
