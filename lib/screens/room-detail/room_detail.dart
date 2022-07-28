import 'package:flutter/material.dart';
import '../../Styles/buttons.dart';
import '../../models/room.dart';
import 'widgets/comments.dart';
import 'widgets/detail_icon.dart';

import 'widgets/facilities_icon.dart';
import 'widgets/personalized_appbar.dart';
import 'widgets/photo_slider.dart';
import 'widgets/room_top_information.dart';
import 'widgets/ubication.dart';

class DetailRoomPage extends StatelessWidget {
  const DetailRoomPage({Key? key}) : super(key: key);
  final double horizontalPadding = 15;
  @override
  Widget build(BuildContext context) {
    final room = ModalRoute.of(context)!.settings.arguments as Room;
    return SafeArea(
      child: Scaffold(
          floatingActionButton: FloatingActionButton(
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.calendar_month),
                  ],
                ),
              )),
          body: SafeArea(
              child: CustomScrollView(slivers: [
            RoomAppBar(room: room),
            SliverList(
                delegate: SliverChildListDelegate([
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: horizontalPadding, vertical: 7),
                child: RoomTopInformation(
                  room: room,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              PhotoSlider(
                room: room,
              ),
              const SizedBox(
                height: 5,
              ),
              DetailIcons(
                room: room,
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
                    Text(room.description),
                    const SizedBox(
                      height: 15,
                    ),
                    const FacilitiesIcons(),
                    const SizedBox(
                      height: 15,
                    ),
                    const Ubication(),
                    const SizedBox(
                      height: 15,
                    ),
                    CommentSection(
                      room: room,
                    ),
                    const Divider(
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 15,
                        ),
                        Text(
                          "\$ ${room.price}",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).primaryColor,
                              fontFamily: 'Urbanist'),
                        ),
                        const Text(
                          "/noche",
                          style:
                              TextStyle(fontSize: 16, fontFamily: 'Urbanist'),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                            child: ElevatedButton(
                          style: ButtonsDecoration.buttonPrimaryStyle(
                              context: context, elevation: 3),
                          onPressed: () {
                            Navigator.pushNamed(
                                context, "createReservationPage",
                                arguments: room);
                          },
                          child: const Padding(
                            padding: EdgeInsets.all(13.0),
                            child: Text(
                              "Reservar",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontFamily: 'Urbanist'),
                            ),
                          ),
                        ))
                      ],
                    )
                  ],
                ),
              ),
            ]))
          ]))),
    );
  }
}
