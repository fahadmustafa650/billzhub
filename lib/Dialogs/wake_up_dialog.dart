import 'package:billzhub/screens/wallet_screen.dart';
import 'package:flutter/material.dart';

class WakeUpDialog extends StatelessWidget {
  static final id = '/wakeup_dialog';
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
                Text(
                  'Wake Up cuckoo up',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'It will indicate the token price goes up\n or down.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Image(
                  image: AssetImage('assets/images/house_birds.jpeg'),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, WalletDepositScreen.id);
                  },
                  child: Container(
                    height: 50,
                    width: 120,
                    decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                        child: Text(
                      'Wake Up',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    )),
                  ),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Not Now',
                      style: TextStyle(color: Colors.grey[400], fontSize: 16),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
