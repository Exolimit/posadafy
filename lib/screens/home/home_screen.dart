import 'package:flutter/material.dart';
import 'package:take_a_break/screens/home/widgets/posada_app_bar.dart';
import 'package:take_a_break/screens/home/widgets/welcome_text.dart';
import 'widgets/category_buttons.dart';
import 'widgets/room_slider.dart';
import 'widgets/search_hab.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
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
            const PosadaAppBar(),
            const WelcomeText(),
            const SizedBox(
              height: 25,
            ),
            const SearchHabButton(),
            const SizedBox(
              height: 25,
            ),
            CategoryButtons(options: options),
            const SizedBox(
              height: 25,
            ),
            const RoomSlide(),
            // TextButton(
            //   onPressed: () => throw Exception(),
            //   child: const Text("Throw Test Exception"),
            // ),
          ],
        ),
      ),
    );
  }
}
