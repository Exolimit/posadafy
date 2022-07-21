import 'package:flutter/material.dart';

import 'detail.dart';

class DetailIcons extends StatelessWidget {
  const DetailIcons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
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
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.08,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                Detail(
                  icon: Icons.location_city,
                  title: "Edificio 4",
                ),
                Detail(
                  icon: Icons.bed_outlined,
                  title: "4 camas",
                ),
                Detail(
                  icon: Icons.bathtub_rounded,
                  title: "2 baños",
                ),
                Detail(
                  icon: Icons.location_city,
                  title: "200 mt2",
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
