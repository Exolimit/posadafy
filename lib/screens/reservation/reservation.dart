import 'package:flutter/material.dart';
import 'package:take_a_break/Styles/buttons.dart';

import '../home/widgets/category_buttons.dart';
import 'widgets/app_bar.dart';

class ReservationPage extends StatelessWidget {
  ReservationPage({Key? key}) : super(key: key);
  final List<String> options = [
    "Recomendados",
    "Simples",
    "Dobles",
    "Familiar"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            children: [
              const AppBarReservation(),
              CategoryButtons(options: options),
              const SizedBox(height: 10),
              Expanded(
                  child: Container(
                padding: const EdgeInsets.all(10),
                color: const Color.fromRGBO(232, 248, 239, 1),
                child: SingleChildScrollView(
                  child: Column(
                    children: const [
                      SizedBox(
                        height: 10,
                      ),
                      ReservationCard(),
                      SizedBox(
                        height: 10,
                      ),
                      ReservationCard(),
                      SizedBox(
                        height: 10,
                      ),
                      ReservationCard(),
                      SizedBox(
                        height: 10,
                      ),
                      ReservationCard(),
                    ],
                  ),
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}

class ReservationCard extends StatelessWidget {
  const ReservationCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 100,
              child: Row(
                children: [
                  SizedBox(
                    width: 80,
                    height: 80,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: const FadeInImage(
                        fadeOutDuration: Duration(milliseconds: 100),
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://s3.amazonaws.com/arc-wordpress-client-uploads/infobae-wp/wp-content/uploads/2019/05/20152251/Dorado-Beach-a-Ritz-Carlton-Reserve-3.jpg"),
                        placeholder: AssetImage('assets/img/loading.gif'),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Habitación presidencial",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Urbanist'),
                      ),
                      const Text(
                        "Edificio 1",
                        style: TextStyle(fontSize: 16, fontFamily: 'Urbanist'),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(232, 248, 239, 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Pagado",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(98, 207, 144, 1),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const Divider(color: Colors.grey),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    style: ButtonsDecoration.buttonPrimaryStyle(
                        context: context, elevation: 2),
                    onPressed: () {},
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Mirar ticket"),
                    ))
              ],
            )
          ],
        ));
  }
}
