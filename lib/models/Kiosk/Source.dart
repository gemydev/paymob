class Source {
  Source({
      this.identifier, 
      this.subtype,});

  Source.fromJson(dynamic json) {
    identifier = json['identifier'];
    subtype = json['subtype'];
  }
  String identifier;
  String subtype;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['identifier'] = identifier;
    map['subtype'] = subtype;
    return map;
  }

}