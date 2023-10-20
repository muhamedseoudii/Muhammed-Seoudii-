class CompanyData {

  late final List<DataModel> list;

  CompanyData.fromJson(Map<String, dynamic> json) {
    list = List.from(json['data']).map((e) => DataModel.fromJson(e)).toList();
  }
}

class DataModel {


  late final int id;
  late final String name, email, website, about, location, createdAt, updatedAt;


  DataModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    website = json['website'];
    about = json['about'];
    location = json['location'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }
}
