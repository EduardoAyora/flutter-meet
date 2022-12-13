class EventModel {
  int? id;
  String? status;
  Null? sort;
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
  Null? importantInformation;
  bool? hideStartTime;
  Null? hideStartDate;
  Null? hideEndTime;
  Null? hideEndDate;
  int? venue;
  Null? tour;
  Null? facebookPixel;
  Null? googleAnalyticsId;
  Null? publishDate;
  Null? restrictionsTag;
  Null? chart;
  List<int>? categories;
  List<int>? contracts;
  List<Null>? promoters;
  List<Null>? tickets;

  EventModel(
      {this.id,
      this.status,
      this.sort,
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
      this.importantInformation,
      this.hideStartTime,
      this.hideStartDate,
      this.hideEndTime,
      this.hideEndDate,
      this.venue,
      this.tour,
      this.facebookPixel,
      this.googleAnalyticsId,
      this.publishDate,
      this.restrictionsTag,
      this.chart,
      this.categories,
      this.contracts,
      this.promoters,
      this.tickets});

  EventModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    status = json['status'];
    sort = json['sort'];
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
    importantInformation = json['important_information'];
    hideStartTime = json['hide_start_time'];
    hideStartDate = json['hide_start_date'];
    hideEndTime = json['hide_end_time'];
    hideEndDate = json['hide_end_date'];
    venue = json['venue'];
    tour = json['tour'];
    facebookPixel = json['facebook_pixel'];
    googleAnalyticsId = json['google_analytics_id'];
    publishDate = json['publish_date'];
    restrictionsTag = json['restrictions_tag'];
    chart = json['chart'];
    categories = json['categories'].cast<int>();
    contracts = json['contracts'].cast<int>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['status'] = this.status;
    data['sort'] = this.sort;
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
    data['important_information'] = this.importantInformation;
    data['hide_start_time'] = this.hideStartTime;
    data['hide_start_date'] = this.hideStartDate;
    data['hide_end_time'] = this.hideEndTime;
    data['hide_end_date'] = this.hideEndDate;
    data['venue'] = this.venue;
    data['tour'] = this.tour;
    data['facebook_pixel'] = this.facebookPixel;
    data['google_analytics_id'] = this.googleAnalyticsId;
    data['publish_date'] = this.publishDate;
    data['restrictions_tag'] = this.restrictionsTag;
    data['chart'] = this.chart;
    data['categories'] = this.categories;
    data['contracts'] = this.contracts;
    return data;
  }
}
