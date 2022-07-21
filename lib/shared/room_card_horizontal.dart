import 'package:flutter/material.dart';
import 'package:take_a_break/models/room.dart';

class RoomCardHorizontal extends StatelessWidget {
  final Room targetRoom;

  const RoomCardHorizontal({Key? key, required this.targetRoom})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, 'roomDetailPage');
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  offset: const Offset(2, 5),
                  blurRadius: 3,
                  spreadRadius: 1)
            ]),
        child: Row(
          children: [
            SizedBox(
              width: 80,
              height: 80,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: FadeInImage(
                  fadeOutDuration: const Duration(milliseconds: 100),
                  fit: BoxFit.cover,
                  image: NetworkImage(targetRoom.featuredImageUrl),
                  placeholder: const AssetImage('assets/img/loading.gif'),
                ),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    targetRoom.name,
                    style: const TextStyle(
                      fontFamily: 'Urbanist',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(targetRoom.location,
                      style: const TextStyle(
                        fontFamily: 'Urbanist',
                      )),
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Color.fromRGBO(254, 210, 1, 1),
                        size: 16,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(targetRoom.score.toString()),
                      const SizedBox(width: 5),
                      Text(
                        "${targetRoom.reviewsNumber} reseñas",
                        style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Urbanist'),
                      )
                    ],
                  )
                ],
              ),
            ),
            Column(children: [
              Text(
                "\$${targetRoom.pricePerNigth}",
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "/noche",
                style: TextStyle(fontFamily: 'Urbanist'),
              ),
              const SizedBox(
                height: 5,
              ),
              const Icon(Icons.bookmark_border),
            ]),
          ],
        ),
      ),
    );
  }
}
