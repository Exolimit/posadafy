import 'package:flutter/material.dart';

import 'rooms_types_button.dart';

class CategoryButtons extends StatelessWidget {
  const CategoryButtons({
    Key? key,
    required this.options,
  }) : super(key: key);

  final List<String> options;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
    );
  }
}
