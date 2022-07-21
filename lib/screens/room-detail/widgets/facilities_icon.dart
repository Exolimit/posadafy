import 'package:flutter/material.dart';

import 'detail.dart';

class FacilitiesIcons extends StatelessWidget {
  const FacilitiesIcons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Text(
              "Facilidades",
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Urbanist"),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          children: const [
            Detail(
              icon: Icons.pool,
              title: "Piscina",
            ),
            Detail(
              icon: Icons.wifi,
              title: "Wifi",
            ),
            Detail(
              icon: Icons.restaurant,
              title: "Restaurante",
            ),
            Detail(
              icon: Icons.local_parking_sharp,
              title: "Parking ",
            ),
          ],
        ),
      ],
    );
  }
}
