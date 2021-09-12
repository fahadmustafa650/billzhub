import 'package:flutter/material.dart';
import 'keypad_screen.dart';

class EnterWalletScreen extends StatefulWidget {
  static final id = '/enter_wallet_screen';
  @override
  _EnterWalletScreenState createState() => _EnterWalletScreenState();
}

class _EnterWalletScreenState extends State {
  TextEditingController pinController = TextEditingController();
  String numCode = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff0d0f28),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          title: Text('Wallet'),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Enter Amount',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  width: 180,
                  child: TextFormField(
                    controller: pinController,
                    readOnly: true,
                    // textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      prefixIcon: Icon(Icons.attach_money),
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Min \$100 - Max \$10000',
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Current Balance: \$10,000',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                KeyPad(
                  pinController: pinController,
                  isPinLogin: false,
                  onChange: (String pin) {
                    pinController.text = pin;

                    setState(() {
                      print(pinController.text);
                    });
                  },
                  onSubmit: (String pin) {
                    print('Pin is ${pinController.text}');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
