import 'package:flutter/material.dart';


class RoomCardHorizontal extends StatelessWidget {


  const RoomCardHorizontal({Key? key}) : super(key: key);

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
                const Icon(Icons.album),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                         const  Text("Habitación presidencial", style: TextStyle(fontSize: 20.0)),
                         const  Text("Loja, El pedestal", style: TextStyle(fontSize: 16.0)),
                        Row(
                          children: const [
                            Icon(Icons.star),
                            Text("5.0"),
                            SizedBox(width: 10),
                            Text("4 345 reseñas")
                          ],
                        )
                    ],
                  ),
                ),

                Column(
                  children: const [
                      Text("\$205"),
                      Text("/noche"),
                      Icon(Icons.bookmark),
                  ]
                ),
                
              ],
          ), 
          
          
          ),
    );
  }

}