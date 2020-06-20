import 'package:flutter/material.dart';
import 'package:mailto/mailto.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:email_launcher/email_launcher.dart';

void main() {
  runApp(MyApp());
}

CallMeBabe() async {
  launch(('tel://${'+8801950092533'}'));
}

_launchURL() async {
  const url = 'https://www.twitch.tv/pipo_xyz';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

funcOpenMailComposer() async {
  final mailtoLink = Mailto(
    to: ['marufsiddique71@gmail.com'],
    cc: ['null', 'null'],
    subject: '',
    body: '',
  );
  await launch('$mailtoLink');
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.pink[100],
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 52,
              backgroundColor: Colors.deepPurple[900],
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/pipo.jpg'),
              ),
            ),
            Text(
              'Maruf Siddique',
              style: TextStyle(
                fontFamily: 'GloriaHallelujah',
                fontSize: 25,
                color: Colors.green[800],
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '(༼ つ ◕_◕ ༽つ)',
              style: TextStyle(
                fontFamily: 'GloriaHallelujah',
                fontSize: 15,
                color: Colors.teal[800],
                fontWeight: FontWeight.w200,
              ),
            ),
            Text(
              'Graphics Designer | Programmer',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 16,
                color: Colors.deepPurple[900],
                fontWeight: FontWeight.w400,
                letterSpacing: 2,
              ),
            ),
            SizedBox(
              height: 5,
              width: 340,
              child: Divider(
                color: Colors.pink.shade900,
              ),
            ),
            Card(
              color: Colors.pink,
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 30),
              child: ListTile(
                onTap: () async {
                  CallMeBabe();
                },
                leading: Icon(
                  Icons.phone,
                  size: 20,
                  color: Colors.white,
                ),
                title: Text(
                  '+8801950092533',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Poppins',
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.pink,
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 30),
              child: ListTile(
                onTap: () async {
                  funcOpenMailComposer();
                },
                leading: Icon(
                  Icons.email,
                  size: 20,
                  color: Colors.white,
                ),
                title: Text(
                  'Click to contact via E-mail',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Poppins',
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.pink,
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 30),
              child: ListTile(
                onTap: () async {
                  _launchURL();
                },
                leading: Icon(
                  Icons.gamepad,
                  size: 25,
                  color: Colors.white,
                ),
                title: Text(
                  'Watch my stream at Twitch',
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'Poppins', fontSize: 17),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
