import 'package:flutter/material.dart';

class CommentSection extends StatelessWidget {
  const CommentSection({Key? key}) : super(key: key);
  final horizontalPadding = 15.0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Reseñas",
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Urbanist"),
            ),
            const Icon(
              Icons.star,
              color: Color.fromRGBO(254, 210, 1, 1),
              size: 16,
            ),
            const Text(
              "4.3",
              style: TextStyle(fontFamily: 'Urbanist'),
            ),
            const Text(
              "(200 reseñas)",
              style: TextStyle(fontFamily: 'Urbanist'),
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  "Ver todos",
                  style: TextStyle(color: Theme.of(context).primaryColor),
                )),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.08),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ]),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(children: [
                  CircleAvatar(
                    backgroundColor: Colors.yellow,
                    backgroundImage: const Image(
                            image: NetworkImage(
                                "https://concepto.de/wp-content/uploads/2018/08/persona-e1533759204552.jpg"))
                        .image,
                    radius: 25,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Andrés Palacios",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Urbanist'),
                      ),
                      Text(
                        "Jan 20, 2022",
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 14, fontFamily: 'Urbanist'),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.star,
                                  color: Colors.white,
                                  size: 12,
                                ),
                                Text(
                                  "3.0",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Urbanist'),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ]),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Est nostrud nulla eiusmod proident nostrud nulla sint laborum velit.",
                  style: TextStyle(fontFamily: 'Urbanist'),
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.08),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ]),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(children: [
                  CircleAvatar(
                    backgroundColor: Colors.yellow,
                    backgroundImage: const Image(
                            image: NetworkImage(
                                "https://pbs.twimg.com/profile_images/1527133314196377600/YLnuI5CA_400x400.jpg"))
                        .image,
                    radius: 25,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Renato Balcazar",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Urbanist'),
                      ),
                      Text(
                        "Jan 20, 2022",
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 14, fontFamily: 'Urbanist'),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.star,
                                  color: Colors.white,
                                  size: 12,
                                ),
                                Text(
                                  "5.0",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Urbanist'),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ]),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Est nostrud nulla eiusmod proident nostrud nulla sint laborum velit.",
                  style: TextStyle(fontFamily: 'Urbanist'),
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.08),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ]),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(children: [
                  const CircleAvatar(
                    backgroundColor: Colors.yellow,
                    radius: 25,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Andrés Palacios",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Urbanist'),
                      ),
                      Text(
                        "Jan 20, 2022",
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 14, fontFamily: 'Urbanist'),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.star,
                                  color: Colors.white,
                                  size: 12,
                                ),
                                Text(
                                  "5.0",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Urbanist'),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ]),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Est nostrud nulla eiusmod proident nostrud nulla sint laborum velit.",
                  style: TextStyle(fontFamily: 'Urbanist'),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
