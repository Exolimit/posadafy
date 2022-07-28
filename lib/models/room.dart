import 'package:take_a_break/models/services.dart';

class Room {
  Room(
      {required this.bathrooms,
      required this.bedsNumber,
      required this.building,
      required this.comments,
      required this.disponibility,
      required this.extension,
      required this.floor,
      required this.idRoom,
      required this.images,
      required this.location,
      required this.number,
      required this.service,
      required this.state,
      required this.thumnail,
      required this.type,
      required this.description,
      required this.reviewCount,
      required this.price});

  final String bathrooms;
  final String bedsNumber;
  final String building;
  final String comments;
  final String disponibility;
  final String extension;
  final String floor;
  final String idRoom;
  final List<String> images;
  final String location;
  final String number;
  final List<Service> service;
  final String state;
  final String thumnail;
  final String type;
  final String description;
  final String reviewCount;
  final String price;

  factory Room.fromJson(Map<String, dynamic> json) => Room(
      bathrooms: json["bathrooms"].toString(),
      bedsNumber: json["beds-number"].toString(),
      building: json["building"],
      comments: json["comments"],
      disponibility: json["disponibility"].toString(),
      extension: json["extension"].toString(),
      floor: json["floor"].toString(),
      idRoom: json["idRoom"],
      images: List<String>.from(json["images"].map((x) => x)),
      location: json["location"],
      number: json["number"].toString(),
      service:
          List<Service>.from(json["service"].map((x) => Service.fromJson(x))),
      state: json["state"].toString(),
      thumnail: json["thumnail"],
      type: json["type"].toString(),
      reviewCount: json["reviewCount"].toString(),
      description: json["description"],
      price: json["price"].toString());

  Map<String, dynamic> toJson() => {
        "bathrooms": bathrooms,
        "beds-number": bedsNumber,
        "building": building,
        "comments": comments,
        "disponibility": disponibility,
        "extension": extension,
        "floor": floor,
        "idRoom": idRoom,
        "images": List<dynamic>.from(images.map((x) => x)),
        "location": location,
        "number": number,
        "service": List<dynamic>.from(service.map((x) => x.toJson())),
        "state": state,
        "thumnail": thumnail,
        "type": type,
      };
  @override
  String toString() {
    return 'Room{bathrooms: $bathrooms, bedsNumber: $bedsNumber, building: $building, comments: $comments, disponibility: $disponibility, extension: $extension, floor: $floor, idRoom: $idRoom, images: $images, location: $location, number: $number, service: $service, state: $state, thumnail: $thumnail, type: $type}';
  }
}
