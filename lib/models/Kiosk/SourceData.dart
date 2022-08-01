class SourceData {
  SourceData({
      this.pan, 
      this.type, 
      this.subType,});

  SourceData.fromJson(dynamic json) {
    pan = json['pan'];
    type = json['type'];
    subType = json['sub_type'];
  }
  String pan;
  String type;
  String subType;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['pan'] = pan;
    map['type'] = type;
    map['sub_type'] = subType;
    return map;
  }

}