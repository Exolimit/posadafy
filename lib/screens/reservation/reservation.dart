import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:take_a_break/Styles/buttons.dart';
import 'package:take_a_break/models/booking.dart';
import 'package:take_a_break/provider/user_provider.dart';
import 'package:take_a_break/shared/posdafy_logo.dart';

import '../home/widgets/category_buttons.dart';
import 'widgets/app_bar.dart';

class ReservationPage extends StatelessWidget {
  ReservationPage({Key? key}) : super(key: key);
  final List<String> options = [
    "Todas",
  ];
  @override
  Widget build(BuildContext context) {
    UserProvider userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: userProvider.isLoged
              ? UserReservations(options: options)
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const PosadaLogo(widthSize: 200),
                    const SizedBox(height: 20),
                    const Text(
                      "Para reservar una habitación, debes iniciar sesión",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 32, fontFamily: 'Urbanist'),
                    ),
                    const SizedBox(height: 30),
                    ElevatedButton(
                        style: ButtonsDecoration.buttonPrimaryStyle(
                            context: context, elevation: 3),
                        onPressed: () {
                          Navigator.pushNamed(context, 'loginPage');
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text("Iniciar sesión"),
                        )),
                    const SizedBox(height: 20),
                  ],
                ),
        ),
      ),
    );
  }
}

class UserReservations extends StatelessWidget {
  const UserReservations({
    Key? key,
    required this.options,
  }) : super(key: key);

  final List<String> options;

  @override
  Widget build(BuildContext context) {
    UserProvider userProvider = Provider.of<UserProvider>(context);

    return Column(
      children: [
        const AppBarReservation(),
        userProvider.bookingList.isEmpty
            ? Container()
            : CategoryButtons(options: options),
        const SizedBox(height: 10),
        Expanded(
            child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(10),
          color: const Color.fromRGBO(232, 248, 239, 1),
          child: SingleChildScrollView(
            child: userProvider.isLoading || userProvider.bookingList.isEmpty
                ? const Center(child: CircularProgressIndicator())
                : Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      ...userProvider.bookingList.map((booking) {
                        return ReservationCard(booking: booking);
                      }),
                    ],
                  ),
          ),
        ))
      ],
    );
  }
}

class ReservationCard extends StatelessWidget {
  const ReservationCard({
    Key? key,
    required this.booking,
  }) : super(key: key);
  final Booking booking;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(bottom: 15),
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
                      child: FadeInImage(
                        fadeOutDuration: Duration(milliseconds: 100),
                        fit: BoxFit.cover,
                        image: NetworkImage(booking.room!.thumnail),
                        placeholder: AssetImage('assets/img/loading.gif'),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Habitación ${booking.room!.type}',
                        style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Urbanist'),
                      ),
                      Text(
                        booking.room!.building,
                        style: TextStyle(fontSize: 16, fontFamily: 'Urbanist'),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      booking.state == "0"
                          ? Container(
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
                          : Container(
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(232, 248, 239, 1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "Pendiente",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 207, 98, 98),
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
                    onPressed: () {
                      Navigator.pushNamed(context, 'ticketPage');
                    },
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
