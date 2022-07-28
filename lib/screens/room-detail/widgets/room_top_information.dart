import 'package:flutter/material.dart';
import 'package:take_a_break/models/room.dart';

class RoomTopInformation extends StatelessWidget {
  const RoomTopInformation({
    Key? key,
    required this.room,
  }) : super(key: key);
  final Room room;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Habitacion ${room.type}',
          textAlign: TextAlign.start,
          style: const TextStyle(
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
            Expanded(
                child: Text(
              room.location,
              textAlign: TextAlign.start,
              style: TextStyle(fontFamily: "Urbanist"),
            ))
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        room.state == '1'
            ? Row(
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
              )
            : Row(
                children: const [
                  SizedBox(
                    width: 30,
                  ),
                  Icon(
                    Icons.flag,
                    color: Colors.red,
                    size: 16,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Expanded(
                      child: Text(
                    "NO DISPONIBLE",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontFamily: "Urbanist",
                        color: Colors.red,
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
