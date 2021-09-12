import 'package:flutter/material.dart';

import 'Dialogs/get_started_screen.dart';
import 'Dialogs/wake_up_dialog.dart';
import 'screens/billzhub_screen.dart';
import 'screens/contacts_screen.dart';
import 'screens/create_account_screen_step2.dart';
import 'screens/create_account_screen_step1.dart';
import 'screens/create_account_screen_step3.dart';
import 'screens/enter_wallet_screen.dart';
import 'screens/send_to_screen.dart';
import 'screens/tab_bar.dart';
import 'screens/wallet_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: BillzHubScreen(),
      initialRoute: BillzHubScreen.id,
      routes: {
        BillzHubScreen.id: (context) => BillzHubScreen(),
        CreateAccountScreenStep1.id: (context) => CreateAccountScreenStep1(),
        CreateAccountScreenStep2.id: (context) => CreateAccountScreenStep2(),
        CreateAccountScreenStep3.id: (context) => CreateAccountScreenStep3(),
        ContactsScreen.id: (context) => ContactsScreen(),
        EnterWalletScreen.id: (context) => EnterWalletScreen(),
        GetStarted.id: (context) => GetStarted(),
        SendToScreen.id: (context) => SendToScreen(),
        WakeUpDialog.id: (context) => WakeUpDialog(),
        WalletDepositScreen.id: (context) => WalletDepositScreen(),
        WakeUpDialog.id: (context) => WakeUpDialog(),
      },
    );
  }
}

class TestClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: GetStarted(),
        ),
      ),
    );
  }
}
