import 'package:billzhub/Dialogs/wake_up_dialog.dart';
import 'package:billzhub/screens/wallet_screen.dart';
import 'package:flutter/material.dart';

class GetStarted extends StatelessWidget {
  static final id = '/get_started';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 450,
          width: MediaQuery.of(context).size.width * 0.9,
          padding: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
          child: Card(
            elevation: 5.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage('assets/images/rocket_man.jpeg'),
                ),
                Center(
                    child: Text(
                  'Set Price Alert',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                )),
                SizedBox(
                  height: 10,
                ),
                Center(
                    child: Text(
                  'When price goes up or down you will get notified.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                )),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 25,
                      height: 7,
                      decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, WakeUpDialog.id);
                  },
                  child: Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.lightGreen,
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                        child: Text(
                      'Get Started',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
