class User {
  int? id, phone;
  String? name, lastName;

  User({this.id, this.name, this.lastName, this.phone});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['Name'];
    lastName = json['LastName'];
    phone = json['Phone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ID'] = this.id;
    data['Name'] = this.name;
    data['lastName'] = this.lastName;
    data['Phone'] = this.phone;
    return data;
  }
}
