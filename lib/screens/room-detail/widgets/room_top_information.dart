import 'package:flutter/material.dart';

class RoomTopInformation extends StatelessWidget {
  const RoomTopInformation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Habitación Presidencial',
          textAlign: TextAlign.start,
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              fontFamily: "Urbanist"),
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            const SizedBox(
              width: 30,
            ),
            Icon(
              Icons.location_on,
              color: Theme.of(context).primaryColor,
              size: 16,
            ),
            const SizedBox(
              width: 30,
            ),
            const Expanded(
                child: Text(
              "Loja Olmedo y González Suares",
              textAlign: TextAlign.start,
              style: TextStyle(fontFamily: "Urbanist"),
            ))
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            const SizedBox(
              width: 30,
            ),
            Icon(
              Icons.flag,
              color: Theme.of(context).primaryColor,
              size: 16,
            ),
            const SizedBox(
              width: 30,
            ),
            Expanded(
                child: Text(
              "DISPONIBLE",
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontFamily: "Urbanist",
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold),
            ))
          ],
        ),
        const Divider(
          thickness: 2,
        ),
      ],
    );
  }
}
