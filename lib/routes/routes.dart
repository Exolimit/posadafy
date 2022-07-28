import 'package:flutter/cupertino.dart';
import 'package:take_a_break/screens/pay/pay_screen.dart';
import 'package:take_a_break/screens/ticket/ticket_screen.dart';
import '../screens/create_reservation/create_reservation.dart';
import '../screens/filter_rooms/filter_rooms.dart';
import '../screens/screens.dart';

Map<String, WidgetBuilder> getAppRoutes() {
  return <String, WidgetBuilder>{
    'homePage': (BuildContext context) => const HomePage(),
    'loginPage': (BuildContext context) => const LoginPage(),
    'registerPage': (BuildContext context) => const RegisterPage(),
    'profilePage': (BuildContext context) => const ProfilePage(),
    'roomDetailPage': (BuildContext context) => const DetailRoomPage(),
    'filterRoomsPage': (BuildContext context) => const FilterRoomsPage(),
    'payPage': (BuildContext context) => const PayPage(),
    'createReservationPage': (BuildContext context) =>
        const CreateReservationPage(),
    'ticketPage': (BuildContext context) => const TicketPage(
          popToHome: false,
        )
  };
}
