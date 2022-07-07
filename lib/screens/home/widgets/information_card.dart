import 'package:flutter/material.dart';

class InformationCard extends StatelessWidget {
  const InformationCard({
    Key? key,
  }) : super(key: key);

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
            const Text(
              "Habitación doble",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 7,
            ),
            const Text(
              "Wifi, Netflix",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
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
