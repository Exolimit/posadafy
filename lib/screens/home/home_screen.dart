import 'package:flutter/material.dart';
import 'package:take_a_break/screens/home/widgets/posada_app_bar.dart';
import 'package:take_a_break/screens/home/widgets/welcome_text.dart';
import 'widgets/room_slider.dart';
import 'widgets/rooms_types_button.dart';
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
            const RoomSlide(),
          ],
        ),
      ),
    );
  }
}
