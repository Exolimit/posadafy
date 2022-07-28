import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:take_a_break/provider/user_provider.dart';

import '../../../shared/widgets.dart';

class AppBarReservation extends StatelessWidget {
  const AppBarReservation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    UserProvider userProvider = Provider.of<UserProvider>(context);
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          PosadaLogo(widthSize: 150),
          IconButton(
              onPressed: () {
                userProvider.getBookings();
              },
              icon: Icon(Icons.refresh))
        ],
      ),
    );
  }
}
