import 'package:flutter/material.dart';

import '../../../models/room.dart';

class InformationCard extends StatelessWidget {
  const InformationCard({
    Key? key,
    required this.room,
  }) : super(key: key);
  final Room room;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        color: const Color.fromRGBO(26, 182, 92, 0.7),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Habitacion ${room.type}',
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 7,
            ),
            ...room.service.map((service) {
              return Text(
                service.name,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
              );
            }),
            const SizedBox(
              height: 7,
            ),
            RichText(
              textAlign: TextAlign.start,
              textScaleFactor: 1,
              text: const TextSpan(
                  text: '\$20',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  children: [
                    TextSpan(
                        text: "/noche",
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 20,
                        )),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
