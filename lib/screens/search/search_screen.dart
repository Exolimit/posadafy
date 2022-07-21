import 'package:flutter/material.dart';
import 'package:take_a_break/models/room.dart';
import '../../shared/widgets.dart';
import '../home/widgets/rooms_types_button.dart';
import '../home/widgets/search_hab.dart';

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
              height: 15,
            ),
            const SearchHabButton(),
            const SizedBox(
              height: 20,
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
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text("Resultados ( 10 ) ",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Urbanist')),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: Container(
                color: const Color.fromRGBO(232, 248, 239, 1),
                child: ListView.builder(
                  addAutomaticKeepAlives: true,
                  scrollDirection: Axis.vertical,
                  itemCount: 10,
                  itemBuilder: (context, int index) {
                    return RoomCardHorizontal(
                      targetRoom: Room(
                          "Habitación presidencial",
                          "Loja, El Pedestal",
                          4.7,
                          314,
                          95,
                          "https://s3.amazonaws.com/arc-wordpress-client-uploads/infobae-wp/wp-content/uploads/2019/05/20152251/Dorado-Beach-a-Ritz-Carlton-Reserve-3.jpg"),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
