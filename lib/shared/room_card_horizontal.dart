import 'package:flutter/material.dart';
import 'package:take_a_break/models/room.dart';


class RoomCardHorizontal extends StatelessWidget {

  final Room targetRoom;

  const RoomCardHorizontal({Key? key, required this.targetRoom}) : super(key: key);

 @override
  Widget build(BuildContext context) {
    return InkWell(onTap: () {
      
    },
      child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
                SizedBox(
                  width: 80,
                  height: 80,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: FadeInImage(
                              fadeOutDuration: const Duration(milliseconds: 100),
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                targetRoom.featuredImageUrl
                              ),
                              placeholder: const AssetImage('assets/img/loading.gif'),
                            ),
                  ),
                ),
  
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                         Text(targetRoom.name, style: const TextStyle(fontSize: 20.0)),
                         Text(targetRoom.location, style: const TextStyle(fontSize: 16.0)),
                        Row(
                          children:  [
                            const Icon(Icons.star),
                            Text(targetRoom.score.toString()),
                            const SizedBox(width: 10),
                            Text("${targetRoom.reviewsNumber} reseñas")
                          ],
                        )
                    ],
                  ),
                ),

                Column(
                  children:  [
                      Text("\$${targetRoom.pricePerNigth}"),
                      const Text("/noche"),
                      const Icon(Icons.bookmark),
                  ]
                ),
                
              ],
          ), 
          
          
          ),
    );
  }

}