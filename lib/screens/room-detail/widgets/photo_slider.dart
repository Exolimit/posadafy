import 'package:flutter/material.dart';

import '../../../models/room.dart';

class PhotoSlider extends StatelessWidget {
  const PhotoSlider({
    Key? key,
    required this.room,
  }) : super(key: key);
  final Room room;
  final double horizontalPadding = 15;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Fotos",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Urbanist"),
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Mirar todas",
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Urbanist"),
                  )),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 15),
          height: MediaQuery.of(context).size.height * 0.15,
          child: ListView.builder(
              itemCount: room.images.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 15.0, bottom: 10),
                  child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.45,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: FadeInImage(
                          fit: BoxFit.fitWidth,
                          image: NetworkImage(
                            room.images[index],
                          ),
                          placeholder:
                              const AssetImage('assets/img/loading.gif'),
                        ),
                      )),
                );
              }),
        ),
      ],
    );
  }
}
