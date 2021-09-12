import 'package:flutter/material.dart';

import 'enter_wallet_screen.dart';

class KeyPad extends StatelessWidget {
  static final id = '/key_pad_screen';
  final double buttonSize = 60.0;
  final TextEditingController pinController;
  final Function onChange;
  final Function onSubmit;
  final bool isPinLogin;

  KeyPad({this.onChange, this.onSubmit, this.pinController, this.isPinLogin});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 30, right: 30),
      child: Column(
        children: [
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buttonWidget('1'),
              buttonWidget('2'),
              buttonWidget('3'),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buttonWidget('4'),
              buttonWidget('5'),
              buttonWidget('6'),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buttonWidget('7'),
              buttonWidget('8'),
              buttonWidget('9'),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buttonWidget('.'),
              buttonWidget('0'),
              !isPinLogin
                  ? iconButtonWidget(
                      Icons.arrow_forward,
                      () {
                        Navigator.pushNamed(context, EnterWalletScreen.id);
                      },
                    )
                  : Container(
                      width: buttonSize,
                    ),
            ],
          ),
        ],
      ),
    );
  }

  buttonWidget(String buttonText) {
    return Container(
      height: buttonSize,
      width: buttonSize,
      child: RaisedButton(
        color: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(buttonSize / 2),
        ),
        focusColor: Colors.blue,
        hoverColor: Colors.blue,
        highlightColor: Colors.blue,
        onPressed: () {
          pinController.text = pinController.text + buttonText;
        },
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
        ),
      ),
    );
  }

  iconButtonWidget(IconData icon, Function function) {
    return InkWell(
      onTap: function,
      child: Container(
        height: buttonSize,
        width: buttonSize,
        decoration:
            BoxDecoration(color: Colors.lightGreen, shape: BoxShape.circle),
        child: Center(
          child: Icon(
            icon,
            size: 30,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
