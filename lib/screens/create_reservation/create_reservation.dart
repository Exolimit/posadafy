import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:take_a_break/provider/user_provider.dart';
import '../../Styles/buttons.dart';
import '../../models/room.dart';
import '../room-detail/widgets/room_top_information.dart';
import 'package:intl/intl.dart';

class CreateReservationPage extends StatefulWidget {
  const CreateReservationPage({Key? key}) : super(key: key);

  @override
  State<CreateReservationPage> createState() => _CreateReservationPageState();
}

int adultsNumber = 0;
int childrenNumber = 0;
double totalPrice = 0;
var date = DateTime.now();
DateTime checkInDate = DateTime.now();
DateTime checkOutDate = DateTime.now();
int totalDays = 0;

class _CreateReservationPageState extends State<CreateReservationPage> {
  @override
  Widget build(BuildContext context) {
    UserProvider userProvider = Provider.of<UserProvider>(context);
    final Room room = ModalRoute.of(context)!.settings.arguments as Room;
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back)),
                    const Text(
                      "Reservar ",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Urbanist'),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: Image.network(
                    room.thumnail,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 15),
                  child: Column(
                    children: [
                      RoomTopInformation(
                        room: room,
                      ),
                    ],
                  ),
                ),
                CalendarDatePicker2(
                  config: CalendarDatePicker2Config(
                      calendarType: CalendarDatePicker2Type.range,
                      selectedDayHighlightColor:
                          Theme.of(context).primaryColor),
                  onValueChanged: (value) => {
                    if (value.length == 1)
                      {print("1 no más")}
                    else
                      {
                        setState(() {
                          checkInDate = value[0]!;
                          checkOutDate = value[1]!;
                          totalDays =
                              checkOutDate.difference(checkInDate).inDays;
                          totalPrice =
                              totalDays.toDouble() * double.parse(room.price);
                        })
                      }
                  },
                  initialValue: [checkInDate, checkOutDate],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        const Text(
                          "Check In",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Urbanist'),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            ),
                            color: Colors.grey[200],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              children: [
                                Text((DateFormat('EEEE, d MMM, yyyy')
                                    .format(checkInDate)
                                    .split(',')[1])),
                                const SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  children: [
                                    Icon(
                                      Icons.calendar_month_sharp,
                                      color: Colors.grey[500],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          const Icon(
                            Icons.arrow_right_rounded,
                            size: 32,
                          ),
                          Text("${totalDays.toString().split('.')[0]} dias",
                              style: const TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Urbanist',
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        const Text(
                          "Check Out",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Urbanist'),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            ),
                            color: Colors.grey[200],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              children: [
                                Text((DateFormat('EEEE, d MMM, yyyy')
                                    .format(checkOutDate)
                                    .split(',')[1])),
                                const SizedBox(
                                  width: 20,
                                ),
                                Icon(
                                  Icons.calendar_month_sharp,
                                  color: Colors.grey[500],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Text("Adultos",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Urbanist')),
                const SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                    color: Colors.grey[200],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                            onPressed: () {
                              updateValue("1", -1);
                            },
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                  color: Colors.green[100],
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Text(
                                    "-",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Urbanist',
                                        color: Colors.black),
                                  ),
                                ))),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          adultsNumber.toString(),
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Urbanist',
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        TextButton(
                            onPressed: () {
                              updateValue("1", 1);
                            },
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                  color: Colors.green[100],
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Text(
                                    "+",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Urbanist',
                                        color: Colors.black),
                                  ),
                                )))
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Text("Infantes",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Urbanist')),
                const SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                    color: Colors.grey[200],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                            onPressed: () {
                              updateValue("0", -1);
                            },
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                  color: Colors.green[100],
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Text(
                                    "-",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Urbanist',
                                        color: Colors.black),
                                  ),
                                ))),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          childrenNumber.toString(),
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Urbanist',
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        TextButton(
                            onPressed: () {
                              updateValue("0", 1);
                            },
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                  color: Colors.green[100],
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Text(
                                    "+",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Urbanist',
                                        color: Colors.black),
                                  ),
                                )))
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Text("Total: \$ $totalPrice",
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Urbanist')),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        style: ButtonsDecoration.buttonPrimaryStyle(
                            context: context, elevation: 3),
                        onPressed: () {
                          _showConfirmDialog(room, userProvider);
                        },
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 40, vertical: 10),
                          child: Text("Continuar"),
                        )),
                  ],
                ),
                const SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  _showConfirmDialog(Room room, UserProvider userProvider) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("Confirmar reserva"),
            content: const Text("¿Está seguro de que desea continuar?"),
            actions: [
              TextButton(
                child: const Text("Cancelar"),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              TextButton(
                child: const Text("Continuar"),
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, 'payPage', arguments: {
                    "end-date": checkOutDate,
                    "start-date": checkInDate,
                    "id-room": room.idRoom,
                    "id-user": userProvider.client!.idUser,
                    "adults": adultsNumber,
                    "children": childrenNumber,
                    "total": totalPrice
                  });
                },
              ),
            ],
          );
        });
  }

  updateValue(type, int value) {
    {
      if (type == '1') {
        final temp = adultsNumber + value;
        if (temp > 4 || temp == 0) {
          return;
        }
        adultsNumber += value;
      } else {
        final temp = childrenNumber + value;
        if (temp > 4 || temp < 0) {
          return;
        }
        childrenNumber += value;
      }
      setState(() {});
    }
  }
}
