import 'package:billzhub/Dialogs/get_started_screen.dart';
import 'package:flutter/material.dart';

import 'enter_wallet_screen.dart';

class SendToScreen extends StatelessWidget {
  static final id = '/send_to_screen';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.8,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                topLeft: Radius.circular(30),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(),
                        Text(
                          'Send To',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.clear, color: Colors.black),
                          onPressed: null,
                        )
                      ],
                    ),
                    Text(
                      'From',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.all(8.0),
                      leading: CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/profile_pic.jpeg'),
                        radius: 45,
                      ),
                      title: Text(
                        'Account 1',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        'Balance: \$1000.35',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_back),
                      ),
                    ),
                    Text(
                      'To',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ListTile(
                      onTap: () {},
                      contentPadding: EdgeInsets.all(8.0),
                      leading: CircleAvatar(
                        radius: 45,
                        backgroundImage:
                            AssetImage('assets/images/profile_pic.jpeg'),
                      ),
                      title: Text(
                        'Sara Milosevic',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        '0xffsd....fjdshf',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.arrow_back),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, GetStarted.id);
                  },
                  child: Center(
                    child: Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.greenAccent,
                          borderRadius: BorderRadius.circular(30)),
                      child: Center(
                          child: Text(
                        'Proceed',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                    ),
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
