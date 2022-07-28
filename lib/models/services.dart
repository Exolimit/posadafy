class Service {
  Service({
    required this.name,
  });

  final String name;

  factory Service.fromJson(Map<String, dynamic> json) => Service(
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
      };
}
