import 'package:flutter/material.dart';
import 'package:take_a_break/Styles/buttons.dart';

class TicketPage extends StatelessWidget {
  const TicketPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
             const Text("Posadafy customer", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
             const SizedBox(height: 30,),
             Image.asset("assets/img/QR_Code.png"),
             const SizedBox(height: 30,),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    const Text("Nombre", style: TextStyle(fontSize: 16)),
                    Text("Andres Palacios", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                    SizedBox(height: 16),
                    const Text("Check in", style: TextStyle(fontSize: 16)),
                    Text("Dic 16, 2024", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                    SizedBox(height: 16),
                    const Text("Ocupantes", style: TextStyle(fontSize: 16)),
                    const Text("3", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold))
                  ],
                ),
                Column(
                  children: [
                    const Text("Teléfono", style: TextStyle(fontSize: 16)),
                    Text("+593 987 654 321", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                    SizedBox(height: 16),
                    const Text("Check out", style: TextStyle(fontSize: 16)),
                    Text("Dic 16, 2024", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                    SizedBox(height: 16),
                    const Text("Habitación", style: TextStyle(fontSize: 16)),
                    const Text("231", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold))
                  ],
                )
              ],
             ),
             const SizedBox(height: 100,),
             ElevatedButton(
                      style: ButtonsDecoration.buttonPrimaryStyle(
                          context: context, elevation: 3),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                        child: Text("Descargar Ticket"),
                      )),
             ]),
        ),
      ),
    )));
  }
}
