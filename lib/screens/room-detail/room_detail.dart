import 'package:flutter/material.dart';
import 'widgets/detail.dart';
import 'widgets/personalized_appbar.dart';
import 'widgets/photo_slider.dart';
import 'widgets/room_top_information.dart';

class DetailRoomPage extends StatelessWidget {
  const DetailRoomPage({Key? key}) : super(key: key);
  final double horizontalPadding = 15;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SafeArea(
              child: CustomScrollView(slivers: [
        const RoomAppBar(),
        SliverList(
            delegate: SliverChildListDelegate([
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: horizontalPadding, vertical: 7),
            child: const RoomTopInformation(),
          ),
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
          const SizedBox(
            height: 5,
          ),
          const PhotoSlider(),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
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
            padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
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
          Padding(
            padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Descripción",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Urbanist"),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                    "Pariatur consectetur ex veniam cupidatat labore culpa. Ipsum reprehenderit dolor sint do non duis mollit velit consectetur non. Anim labore do veniam proident dolor occaecat et in duis. Quis qui non ipsum velit in quis ex ipsum aute. Elit sit est fugiat non eiusmod minim nulla nulla."),
                const Text(
                    "Pariatur consectetur ex veniam cupidatat labore culpa. Ipsum reprehenderit dolor sint do non duis mollit velit consectetur non. Anim labore do veniam proident dolor occaecat et in duis. Quis qui non ipsum velit in quis ex ipsum aute. Elit sit est fugiat non eiusmod minim nulla nulla."),
                const Text(
                  "Facilidades",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Urbanist"),
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
                const SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ]))
      ]))),
    );
  }
}
