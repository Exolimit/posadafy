import 'package:flutter/material.dart';

class RoomAppBar extends StatelessWidget {
  const RoomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SliverAppBar(
        centerTitle: true,
        elevation: 2.0,
        backgroundColor: Color.fromRGBO(8, 31, 41, 1),
        expandedHeight: 200,
        floating: false,
        pinned: true,
        flexibleSpace: FlexibleSpaceBar(
            background: FadeInImage(
          fit: BoxFit.fitWidth,
          image: NetworkImage(
            "https://s3.amazonaws.com/arc-wordpress-client-uploads/infobae-wp/wp-content/uploads/2019/05/20152251/Dorado-Beach-a-Ritz-Carlton-Reserve-3.jpg",
          ),
          placeholder: AssetImage('assets/img/loading.gif'),
        )));
  }
}
