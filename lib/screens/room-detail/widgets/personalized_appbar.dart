import 'package:flutter/material.dart';

import '../../../models/room.dart';

class RoomAppBar extends StatelessWidget {
  const RoomAppBar({Key? key, required this.room}) : super(key: key);
  final Room room;
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
        centerTitle: true,
        elevation: 2.0,
        backgroundColor: const Color.fromRGBO(8, 31, 41, 1),
        expandedHeight: 200,
        floating: false,
        pinned: true,
        flexibleSpace: FlexibleSpaceBar(
            background: FadeInImage(
          fit: BoxFit.fitWidth,
          image: NetworkImage(
            room.thumnail,
          ),
          placeholder: const AssetImage('assets/img/loading.gif'),
        )));
  }
}
