import 'package:flutter/material.dart';

import '../../../models/room.dart';
import 'detail.dart';

class DetailIcons extends StatelessWidget {
  const DetailIcons({Key? key, required this.room}) : super(key: key);
  final Room room;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Detalles",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Urbanist"),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.08,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Detail(
                  icon: Icons.location_city,
                  title: "Edificio ${room.floor}",
                ),
                const SizedBox(
                  width: 10,
                ),
                Detail(
                  icon: Icons.bed_outlined,
                  title: room.bedsNumber == '1'
                      ? "${room.bedsNumber} cama"
                      : "${room.bedsNumber} camas",
                ),
                const SizedBox(
                  width: 10,
                ),
                Detail(
                  icon: Icons.bathtub_rounded,
                  title: room.bathrooms == '1'
                      ? '${room.bedsNumber} baño'
                      : '${room.bedsNumber} baños',
                ),
                const SizedBox(
                  width: 10,
                ),
                Detail(
                  icon: Icons.location_city,
                  title: "${room.extension} mt2",
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
