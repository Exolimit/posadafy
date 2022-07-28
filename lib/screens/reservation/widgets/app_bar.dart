import 'package:flutter/material.dart';

import '../../../shared/widgets.dart';

class AppBarReservation extends StatelessWidget {
  const AppBarReservation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.1,
      child: Row(
        children: [PosadaLogo(widthSize: 150)],
      ),
    );
  }
}
