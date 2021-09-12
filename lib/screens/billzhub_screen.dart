import 'package:flutter/material.dart';

import 'create_account_screen_step1.dart';

class BillzHubScreen extends StatelessWidget {
  static final id = '/billzhub_screen';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff0d0f28),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              Container(
                width: 150,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                ),
                child: Center(
                  child: Image(
                    image: AssetImage('assets/images/logo.jpg'),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  'BillzHub',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: Text(
                  'Collect your tokens',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 25, top: 50, bottom: 20),
                child: Text(
                  'How BillzHub will help?',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              TextIconWidget(
                text: 'Social Media Wallet Exchange',
              ),
              SizedBox(
                height: 20,
              ),
              TextIconWidget(
                text: 'High Liquidity',
              ),
              SizedBox(
                height: 20,
              ),
              TextIconWidget(
                text: 'Community Driven',
              ),
              SizedBox(
                height: 80,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  'Enter your mobile number',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    margin: EdgeInsets.only(left: 25),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        '91',
                        style: TextStyle(color: Colors.grey[700], fontSize: 16),
                      ),
                    ),
                  ),
                  Container(
                    width: 200,
                    color: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: '34353532345',
                        hintStyle: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, CreateAccountScreenStep1.id);
                    },
                    child: Container(
                      width: 70,
                      height: 50,
                      // color: Colors.purple,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(25),
                            bottomRight: Radius.circular(25),
                          ),
                          gradient: LinearGradient(colors: [
                            Colors.purple,
                            Colors.purple,
                            Colors.orange
                          ])),
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TextIconWidget extends StatelessWidget {
  final String text;
  const TextIconWidget({
    @required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        children: [
          Icon(
            Icons.circle,
            color: Colors.orange,
            size: 15,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 16),
          )
        ],
      ),
    );
  }
}
