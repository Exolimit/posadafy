import 'package:flutter/material.dart';

class Ubication extends StatelessWidget {
  const Ubication({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).primaryColor,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              offset: const Offset(1, 3),
              blurRadius: 10,
            ),
          ]),
      child: Image.network(
          "https://depor.com/resizer/tWkgaFkRSfQvJrxQJP3zxVe35K4=/580x330/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/DOSTJYG5PVBK3ELX3UXALXJYPQ.jpg"),
    );
  }
}
