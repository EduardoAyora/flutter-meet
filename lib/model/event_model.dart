class EventModel {
  int? id;
  String? status;
  String? userCreated;
  String? dateCreated;
  String? userUpdated;
  String? dateUpdated;
  String? name;
  String? coverImage;
  String? startDate;
  String? endDate;
  String? startTime;
  String? endTime;
  String? information;
  bool? hideStartTime;
  int? venue;
  List<int>? categories;
  List<int>? contracts;

  EventModel({
    this.id,
    this.status,
    this.userCreated,
    this.dateCreated,
    this.userUpdated,
    this.dateUpdated,
    this.name,
    this.coverImage,
    this.startDate,
    this.endDate,
    this.startTime,
    this.endTime,
    this.information,
    this.hideStartTime,
    this.venue,
    this.categories,
    this.contracts,
  });

  EventModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    status = json['status'];
    userCreated = json['user_created'];
    dateCreated = json['date_created'];
    userUpdated = json['user_updated'];
    dateUpdated = json['date_updated'];
    name = json['name'];
    coverImage = json['cover_image'];
    startDate = json['start_date'];
    endDate = json['end_date'];
    startTime = json['start_time'];
    endTime = json['end_time'];
    information = json['information'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['status'] = this.status;
    data['user_created'] = this.userCreated;
    data['date_created'] = this.dateCreated;
    data['user_updated'] = this.userUpdated;
    data['date_updated'] = this.dateUpdated;
    data['name'] = this.name;
    data['cover_image'] = this.coverImage;
    data['start_date'] = this.startDate;
    data['end_date'] = this.endDate;
    data['start_time'] = this.startTime;
    data['end_time'] = this.endTime;
    data['information'] = this.information;
    return data;
  }
}
