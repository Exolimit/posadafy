import 'package:flutter/material.dart';

import '../../../Styles/buttons.dart';

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
          children: const [
            Text(
              "Buscar habitaciones",
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.calendar_month_rounded,
            )
          ],
        ),
      ),
    );
  }
}
