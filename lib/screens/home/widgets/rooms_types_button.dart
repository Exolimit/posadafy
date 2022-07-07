import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:take_a_break/provider/providers.dart';

import '../../../Styles/buttons.dart';

class RoomTypeButton extends StatelessWidget {
  final index;
  const RoomTypeButton({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeProvider homeProvider = Provider.of<HomeProvider>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
      child: ElevatedButton(
        onPressed: () {
          homeProvider.selectedOption = index;
        },
        style: homeProvider.selectedOption != index
            ? ButtonsDecoration.buttonSecondaryStyle(
                context: context, elevation: 1)
            : ButtonsDecoration.buttonPrimaryStyle(
                context: context, elevation: 1),
        child: Text(
          "Recomendadas",
          style: TextStyle(
              color: homeProvider.selectedOption != index
                  ? Theme.of(context).primaryColor
                  : Colors.white),
        ),
      ),
    );
  }
}
