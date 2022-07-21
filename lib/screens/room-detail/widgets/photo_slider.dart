import 'package:flutter/material.dart';

class PhotoSlider extends StatelessWidget {
  const PhotoSlider({
    Key? key,
  }) : super(key: key);
  final double horizontalPadding = 15;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Fotos",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Urbanist"),
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Mirar todas",
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Urbanist"),
                  )),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 15),
          height: MediaQuery.of(context).size.height * 0.15,
          child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 15.0, bottom: 10),
                  child: SizedBox(
                      child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: const FadeInImage(
                      fit: BoxFit.fitWidth,
                      image: NetworkImage(
                        "https://s3.amazonaws.com/arc-wordpress-client-uploads/infobae-wp/wp-content/uploads/2019/05/20152251/Dorado-Beach-a-Ritz-Carlton-Reserve-3.jpg",
                      ),
                      placeholder: AssetImage('assets/img/loading.gif'),
                    ),
                  )),
                );
              }),
        ),
      ],
    );
  }
}
