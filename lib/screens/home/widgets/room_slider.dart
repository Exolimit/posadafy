import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

import 'information_card.dart';

class RoomSlide extends StatelessWidget {
  const RoomSlide({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height * 0.45,
        child: Swiper(
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'roomDetailPage');
              },
              child: Stack(
                children: [
                  SizedBox(
                    height: double.infinity,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: const FadeInImage(
                          fadeOutDuration: Duration(milliseconds: 100),
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            "https://s3.amazonaws.com/arc-wordpress-client-uploads/infobae-wp/wp-content/uploads/2019/05/20152251/Dorado-Beach-a-Ritz-Carlton-Reserve-3.jpg",
                          ),
                          placeholder: AssetImage('assets/img/loading.gif'),
                        )),
                  ),
                  const Positioned(
                    bottom: 20,
                    left: 10,
                    child: InformationCard(),
                  )
                ],
              ),
            );
          },
          itemCount: 10,
          viewportFraction: 0.7,
          scale: 0.9,
        ));
  }
}
