import 'package:flutter/material.dart';
import 'package:take_a_break/screens/home/widgets/posada_app_bar.dart';
import 'package:take_a_break/screens/home/widgets/welcome_text.dart';
import 'widgets/room_slider.dart';
import 'widgets/search_hab.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            PosadaAppBar(),
            WelcomeText(),
            SizedBox(
              height: 25,
            ),
            SearchHabButton(),
            SizedBox(
              height: 25,
            ),
            RoomSlide(),
          ],
        ),
      ),
    );
  }
}
