import 'package:flutter/material.dart';

import '../../../Styles/buttons.dart';

class SearchBar extends StatelessWidget {
  late String title = "Buscar";
  late IconData icon = Icons.search;

  SearchBar({Key? key, title, icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: () {
      
    },
      child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
              color: Color.fromARGB(a, r, g, b),
              borderRadius: BorderRadius.all(Radius.circular(15))),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Icon(icon),
                const SizedBox(
                  width: 10,
                ),
                Expanded(child: Text(title)),
                const SizedBox(
                  width: 10,
                ),
                Icon(icon),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
          )),
    );
  }
}
