import 'package:flutter/material.dart';
import 'package:take_a_break/models/room.dart';


import '../../shared/widgets.dart';
import '../home/widgets/posada_app_bar.dart';
import '../home/widgets/room_slider.dart';
import '../home/widgets/rooms_types_button.dart';
import '../home/widgets/search_hab.dart';
import '../home/widgets/welcome_text.dart';

class SearchScreen extends StatelessWidget {
   SearchScreen({Key? key}) : super(key: key);

  final List<String> options = [
    "Recomendados",
    "Simples",
    "Dobles",
    "Familiar"
  ];


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 25,
            ),
            SearchBar(),
            const SizedBox(
              height: 25,
            ),
            const SearchHabButton(),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
              child: ListView.builder(
                addAutomaticKeepAlives: true,
                scrollDirection: Axis.horizontal,
                itemCount: options.length,
                itemBuilder: (context, int index) {
                  return RoomTypeButton(
                    index: index,
                  );
                },
              ),
            ),
            const SizedBox(
              height: 15,
            ),

            // Todo: Replace with a room list
            RoomCardHorizontal(targetRoom: Room("Habitación presidencial", "Loja, El Pedestal", 4.7, 314, 205, "https://s3.amazonaws.com/arc-wordpress-client-uploads/infobae-wp/wp-content/uploads/2019/05/20152251/Dorado-Beach-a-Ritz-Carlton-Reserve-3.jpg"),)
          ],
        ),
      ),
    );
  }
}
