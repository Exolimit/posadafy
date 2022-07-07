import 'package:flutter/material.dart';

class PosadaAppBar extends StatelessWidget {
  const PosadaAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.10,
      child: Row(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.4,
            child: Image.asset(
              "assets/img/logo.png",
            ),
          ),
          const Expanded(child: SizedBox()),
          IconButton(
            icon: const Icon(Icons.notifications_none_outlined),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.markunread_outlined),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
