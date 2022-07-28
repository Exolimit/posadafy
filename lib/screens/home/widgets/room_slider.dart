import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

import '../../../models/room.dart';
import 'information_card.dart';

class RoomSlide extends StatelessWidget {
  const RoomSlide({
    Key? key,
    required this.rooms,
  }) : super(key: key);
  final List<Room> rooms;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height * 0.45,
        child: Swiper(
          itemBuilder: (BuildContext context, int index) {
            final Room currentRoom = rooms[index];
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'roomDetailPage',
                    arguments: currentRoom);
              },
              child: Stack(
                children: [
                  SizedBox(
                    height: double.infinity,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: FadeInImage(
                          fadeOutDuration: const Duration(milliseconds: 100),
                          fit: BoxFit.cover,
                          image: NetworkImage(currentRoom.thumnail),
                          placeholder:
                              const AssetImage('assets/img/loading.gif'),
                        )),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 10,
                    child: InformationCard(
                      room: currentRoom,
                    ),
                  )
                ],
              ),
            );
          },
          itemCount: rooms.length,
          viewportFraction: 0.7,
          scale: 0.9,
        ));
  }
}
