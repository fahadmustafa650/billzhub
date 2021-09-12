import 'package:flutter/material.dart';
import 'keypad_screen.dart';

class WalletDepositScreen extends StatefulWidget {
  static final id = '/wallet_deposit_screen';
  @override
  _WalletDepositScreenState createState() => _WalletDepositScreenState();
}

class _WalletDepositScreenState extends State {
  TextEditingController pinController = TextEditingController();
  String numCode = '';
  int selectedValue = 0;
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
            onPressed: () {},
          ),
          title: Text('Wallet'),
        ),
        body: ListView(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width * 1,
              color: Color(0xff0d0f28),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Your Account Value',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '\$48,374.68',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedValue = 1;
                    });
                  },
                  child: ButtonText(
                    title: 'Diposite',
                    textColor: Colors.white,
                    btnColor: Colors.blue[900],
                    value: selectedValue,
                    groupValue: 1,
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedValue = 2;
                    });
                  },
                  child: Container(
                    child: ButtonText(
                      title: 'Withdraw',
                      value: selectedValue,
                      groupValue: 2,
                      textColor: Colors.white,
                      btnColor: Colors.blue[900],
                    ),
                  ),
                ),
              ],
            ),
            Text(
              'Your tokens',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/bitcoin_icon.png'),
              ),
              title: Text('Bitcoin'),
              subtitle: Text('Yesterday'),
              trailing: Container(
                width: 90,
                child: Row(
                  children: [
                    Text('\$56,293'),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.grey,
                      //size: 10,
                    )
                  ],
                ),
              ),
            ),
            Divider(
              thickness: 1,
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/ethereum_logo.png'),
              ),
              title: Text('Ethereum'),
              subtitle: Text('14:20 12 Apr'),
              trailing: Container(
                width: 90,
                child: Row(
                  children: [
                    Text('\$10,000'),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.grey,
                      //  size: 10,
                    )
                  ],
                ),
              ),
            ),
            Divider(
              thickness: 1,
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/ripple_icon.png'),
              ),
              title: Text('Bitcoin'),
              subtitle: Text('13:39 16 June'),
              trailing: Container(
                width: 90,
                child: Row(
                  children: [
                    Text('\$4,500'),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.grey,
                    )
                  ],
                ),
              ),
            ),
            Divider(
              thickness: 1,
            ),
          ],
        ),
      ),
    );
  }
}

class ButtonText extends StatelessWidget {
  final title;
  final textColor;
  final Color btnColor;
  final int groupValue;
  final int value;
  const ButtonText(
      {@required this.title,
      @required this.btnColor,
      @required this.textColor,
      @required this.groupValue,
      @required this.value});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(35.0),
        color: groupValue == value ? btnColor : btnColor.withOpacity(0.5),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(color: textColor, fontSize: 16),
        ),
      ),
    );
  }
}
