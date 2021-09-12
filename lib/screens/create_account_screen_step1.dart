import 'package:flutter/material.dart';

import 'create_account_screen_step2.dart';

class CreateAccountScreenStep1 extends StatelessWidget {
  static final id = '/create_account_screen_step1';
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
                          circleColor: Colors.white,
                        ),
                        CstmDivider(
                          color: Colors.grey,
                        ),
                        CstmCirlceStepper(
                          borderColor: Colors.grey,
                          circleColor: Colors.white,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 15, right: 15, top: 5),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              labelText: 'New Password',
                              labelStyle: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 15, right: 15, top: 5),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              labelText: 'Confirm Password',
                              labelStyle: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 15, right: 15, top: 5),
                          child: TextFormField(
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              labelText: 'Mobile',
                              labelStyle: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 15, right: 15, top: 5),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              labelText: 'Tag',
                              labelStyle: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 15, right: 15, top: 5),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              labelText: 'DOB',
                              labelStyle: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                            context, CreateAccountScreenStep2.id);
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: 60,
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
                    SizedBox(
                      height: 10,
                    )
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
