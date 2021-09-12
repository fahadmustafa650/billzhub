import 'package:flutter/material.dart';

import 'contacts_screen.dart';

class CreateAccountScreenStep3 extends StatelessWidget {
  static final id = '/create_account_screen_step3';
  final List<String> _phrases = [
    'then',
    'vacant',
    'hub',
    'avoid',
    'girl',
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff0d0f28),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Create Account',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Enter your details here',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.062,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              height: MediaQuery.of(context).size.height * 0.8,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CstmCirlceStepper(
                          borderColor: Colors.grey,
                          circleColor: Colors.deepPurple[900],
                        ),
                        CstmDivider(
                          color: Colors.grey,
                        ),
                        CstmCirlceStepper(
                          borderColor: Colors.grey,
                          circleColor: Colors.deepPurple[900],
                        ),
                        CstmDivider(
                          color: Colors.grey,
                        ),
                        CstmCirlceStepper(
                          borderColor: Colors.grey,
                          circleColor: Colors.deepPurple[900],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Confirm Seed Phrase',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Select each word in the order it was\n presented to you",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[100],
                      ),
                      height: 100,
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 80,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text('3.'),
                            ),
                          ),
                          Container(
                            width: 80,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text('10.'),
                            ),
                          ),
                          Container(
                            width: 80,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text('7.'),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.25,
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 25.0,
                          mainAxisSpacing: 30.0,
                          childAspectRatio: 6 / 2,
                        ),
                        itemCount: _phrases.length,
                        itemBuilder: (ctx, index) {
                          return Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(10)),
                            height: 30,
                            child: Center(
                                child: Text(
                              _phrases[index],
                              style: TextStyle(color: Colors.black),
                            )),
                          );
                        },
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, ContactsScreen.id);
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: 50.0,
                        child: Center(
                          child: Text(
                            'Proceed',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          gradient: LinearGradient(
                            colors: [
                              Colors.blue,
                              Colors.purple,
                              Colors.orangeAccent
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CstmDivider extends StatelessWidget {
  final color;
  const CstmDivider({this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 2,
      margin: EdgeInsets.symmetric(horizontal: 5),
      color: color,
    );
  }
}

class CstmCirlceStepper extends StatelessWidget {
  final borderColor;
  final circleColor;
  const CstmCirlceStepper(
      {@required this.borderColor, @required this.circleColor});
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: borderColor,
      radius: 10.5,
      child: CircleAvatar(
        radius: 7,
        backgroundColor: circleColor,
      ),
    );
  }
}
