import 'package:flutter/material.dart';

import 'keypad_screen.dart';
import 'send_to_screen.dart';

class ContactsScreen extends StatefulWidget {
  static final id = '/contacts_screen';
  @override
  _ContactsScreenState createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
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
          body: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 1,
                padding: EdgeInsets.symmetric(horizontal: 10),
                height: 80,
                decoration: BoxDecoration(
                  color: Color(0xff0d0f28),
                ),
                child: Center(
                  child: Container(
                    //width: MediaQuery.of(context).size.width * 0.8,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    margin: EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey, width: 2),
                        borderRadius: BorderRadius.circular(20)),
                    child: TextFormField(
                      controller: null,
                      decoration: InputDecoration(
                        hintText: 'Search...',
                        fillColor: Colors.white,
                        focusColor: Colors.white,
                        hintStyle: TextStyle(color: Colors.black),
                        border: InputBorder.none,
                        suffixIcon: Icon(
                          Icons.search_outlined,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                ),
                child: TabBar(
                  controller: _tabController,
                  indicator: BoxDecoration(
                    color: Colors.white,
                  ),
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.black,
                  tabs: [
                    Tab(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Messages',
                            style: TextStyle(
                              color: Colors.grey[800],
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'You have 2 new messages',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Tab(
                      child: Column(
                        children: [
                          Text(
                            'Active(29)',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '29 members are active now',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                            ),
                          ),
                          // tab bar view here
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    // first tab bar view widget
                    Column(
                      children: [
                        Contact(
                          isOnline: false,
                          name: 'Waqas Khan',
                          lastMessage: 'Good Luck',
                          timePassed: 'Now',
                        ),
                        Contact(
                          isOnline: true,
                          name: 'Amir Khan',
                          lastMessage: 'Good Night',
                          timePassed: '3 Mins Ago',
                        ),
                        Contact(
                          isOnline: false,
                          name: 'Ajmal Khan',
                          lastMessage: 'Good Night',
                          timePassed: '3 Mins Ago',
                        ),
                        Contact(
                          isOnline: true,
                          name: 'Akram Khan',
                          lastMessage: 'Good Night',
                          timePassed: '3 Mins Ago',
                        )
                      ],
                    ),
                    // second tab bar view widget
                    Column(
                      children: [
                        OnlineContact(
                          isOnline: true,
                          name: 'Fahad Khan',
                        ),
                        OnlineContact(
                          isOnline: true,
                          name: 'Adil Khan',
                        ),
                        OnlineContact(
                          isOnline: true,
                          name: 'Farhan Khan',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Contact extends StatelessWidget {
  final String name;
  final bool isOnline;
  final String lastMessage;
  final String timePassed;
  const Contact(
      {@required this.name,
      @required this.isOnline,
      @required this.lastMessage,
      @required this.timePassed});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.pushNamed(context, SendToScreen.id);
      },
      title: Text(
        name,
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(lastMessage),
      leading: ProfilePicture(isOnline: isOnline),
      trailing: Text(timePassed),
    );
  }
}

class OnlineContact extends StatelessWidget {
  final String name;
  final bool isOnline;

  const OnlineContact({
    @required this.name,
    @required this.isOnline,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        name,
        style: TextStyle(
            color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
      ),
      leading: ProfilePicture(isOnline: isOnline),
    );
  }
}

class ProfilePicture extends StatelessWidget {
  final bool isOnline;
  const ProfilePicture({
    @required this.isOnline,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 75,
        height: 75,
        child: Stack(
          children: [
            Container(
              width: 65,
              height: 65,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.pink,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/profile_pic.jpeg'))),
            ),
            Positioned(
              top: 5,
              right: 10,
              child: Opacity(
                opacity: isOnline ? 1 : 0,
                child: Container(
                  width: 15,
                  height: 15,
                  alignment: Alignment.bottomRight,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 2)),
                ),
              ),
            ),
          ],
        ));
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
