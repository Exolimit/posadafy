import 'package:flutter/material.dart';
import 'package:take_a_break/Styles/buttons.dart';

enum PaymentMethod { paypal, transferwise }

class PayPage extends StatelessWidget {
  const PayPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
      child: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
         children: [
          Column(
            children: const [
              SizedBox(
                height: 20,
              ),
            ],
          ),
          const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Método de pago",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Urbanist',
                ),
              )),
          Container(
              decoration: BoxDecoration(
                color: Colors.green.shade100,
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Colors.white,
                      ),
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset('assets/img/PayPal.png'),
                              const Text("Paypal")
                            ],
                          ),
                          const Icon(Icons.radio_button_checked),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Colors.white,
                      ),
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset('assets/img/TransferWise.png'),
                              const Text("TransferWise")
                            ],
                          ),
                          const Icon(Icons.radio_button_off),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
          const SizedBox(height: 300,),
          SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment : MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
            
              children: [
                ElevatedButton(
                    style: ButtonsDecoration.buttonPrimaryStyle(
                        context: context, elevation: 3),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                      child: Text("Continuar"),
                    )),
              ],
            ),
          ),
        ]),
      ),
    )));
  }
}
