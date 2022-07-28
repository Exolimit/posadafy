import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../Styles/buttons.dart';
import '../../../provider/rooms_provider.dart';

class SearchHabButton extends StatelessWidget {
  const SearchHabButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style:
          ButtonsDecoration.buttonPrimaryStyle(elevation: 2, context: context),
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: const [
                Text(
                  "Preferencias de reserva",
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
              ],
            ),
            const SizedBox(
              width: 20,
            ),
            const Icon(
              Icons.calendar_month_rounded,
            )
          ],
        ),
      ),
    );
  }
}
