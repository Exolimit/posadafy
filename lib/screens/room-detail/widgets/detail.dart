import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  final IconData icon;
  final String title;
  const Detail({Key? key, required this.icon, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          Icon(
            icon,
            color: Theme.of(context).primaryColor,
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            title,
            style: TextStyle(fontFamily: "Urbanist"),
          )
        ],
      ),
    );
  }
}
