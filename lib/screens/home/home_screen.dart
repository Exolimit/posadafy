import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:take_a_break/screens/home/widgets/posada_app_bar.dart';
import 'package:take_a_break/screens/home/widgets/welcome_text.dart';
import '../../provider/rooms_provider.dart';
import 'widgets/category_buttons.dart';
import 'widgets/room_slider.dart';
import 'widgets/search_hab.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final List<String> options = ["Recomendados", "Simples", "Dobles", "Triples"];
  @override
  Widget build(BuildContext context) {
    final roomProvider = Provider.of<RoomsProvider>(context);
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
            roomProvider.roomList.isEmpty
                ? Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        CircularProgressIndicator(),
                      ],
                    ),
                  )
                : RoomSlide(
                    rooms: roomProvider.roomList,
                  ),
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
