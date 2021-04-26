class Trip {
  String role;
  String token;

  Trip({this.role,this.token});

  Trip.fromJson(Map<String, dynamic> json) {
    role = json['Role'];
    token = json['Token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Role'] = this.role;
    data['Token'] = this.role;
    return data;
  }
}