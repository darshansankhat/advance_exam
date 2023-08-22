class InstagramModel {
  String? status;
  String? result;

  InstagramModel({
    this.status,
    this.result,
  });

  factory InstagramModel.fromJson(Map<dynamic, dynamic> json) => InstagramModel(
    status: json["status"],
    result: json["result"],
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "result": result,
  };
}