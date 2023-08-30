import 'package:flutter/material.dart';
import 'package:task/screens/button_widget.dart';
import 'package:task/screens/container_widget.dart';
import 'package:task/screens/text_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.indigo[900],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Stack(children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                              size: 20,
                            )),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: CircleAvatar(
                          radius: 60,
                          backgroundImage: NetworkImage(
                              'https://i.pinimg.com/236x/c1/86/c8/c186c89ed17db6677ae7d2c1f9592b25.jpg'),
                        ),
                      )
                    ]),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Mona Yasser',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w500),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Amount Duo \$1600 ',
                          style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 14,
                          ),
                        ),
                        Container(
                            width: 70,
                            height: 36,
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(40),
                                  topRight: Radius.circular(40),
                                  bottomLeft: Radius.circular(40),
                                  bottomRight: Radius.circular(40),
                                )),
                            child: Center(
                              child: Text(
                                'Lease on',
                                style: TextStyle(color: Colors.white),
                              ),
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ContainerWidget(
                            text: 'Property',
                            icon: Icons.house_rounded,
                            color: Colors.lightBlue),
                        ContainerWidget(
                            text: 'Payments',
                            icon: Icons.attach_money,
                            color: Colors.lightGreen),
                        ContainerWidget(
                            text: 'Deposit',
                            icon: Icons.comment_bank,
                            color: Colors.indigoAccent)
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 300,
                      height: 60,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromARGB(255, 76, 105, 246), width: 1),
                        color: Colors.indigo[900],
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                          bottomLeft: Radius.circular(40),
                          bottomRight: Radius.circular(40),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Invite to collect rent',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(40),
                          bottomRight: Radius.circular(40))),
                  child: Column(
                    children: [
                      TextWidget(
                        text1: 'Lease Type',
                        text2: 'Fixed lease',
                        text3: '15th of month',
                        text4: 'Payment Duo on',
                      ),
                      TextWidget(
                          text1: '02-02-2019',
                          text2: 'Start Date',
                          text3: '02-02-2020',
                          text4: 'End Date'),
                      TextWidget(
                          text1: '\$1300',
                          text2: 'Rent Amount',
                          text3: '\$1300',
                          text4: 'Security Amount'),
                      SizedBox(
                        height: 40,
                      ),
                      ButtonWidget()
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
