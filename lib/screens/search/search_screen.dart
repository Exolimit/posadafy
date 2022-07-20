import 'package:flutter/material.dart';


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
            SearchBar(),
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
            const RoomCardHorizontal()
          ],
        ),
      ),
    );
  }
}
