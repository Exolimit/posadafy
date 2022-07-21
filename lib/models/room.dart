
class Room {

  String name = "";
  String location = "";
  double score = 0.0;
  int reviewsNumber = 0;
  double pricePerNigth = 0;
  String featuredImageUrl = "";

  Room(this.name, this.location, this.score, this.reviewsNumber, this.pricePerNigth, this.featuredImageUrl);

  Room.empty();

}
