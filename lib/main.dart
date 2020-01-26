import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NICE ETF App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'ETF Schedule'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        drawer: Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: const <Widget>[
        DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
              image:  AssetImage('assets/logo.jpeg')
            ),
          ),
          child: Padding(
            child: Text(
            'Enterprise Tech Fest',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
            ),  
            padding: EdgeInsets.fromLTRB(20.0,100.0,0.0,0.0),
          ),
        ),
        ListTile(
          leading: Icon(Icons.schedule),
          title: Text('Schedule'),
        ),
        ListTile(
          leading: Icon(Icons.info),
          title: Text('About ETF'),
        ),
        ListTile(
          leading: Icon(Icons.help_outline),
          title: Text('Help'),
        ),
      ],
    ),
  ),
        body:
        Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20.0),
              child: Text(
              'Search for demo or talk :',
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.grey,
                fontWeight: FontWeight.bold 
                ),
            ),
            ),
            Row(
              children: <Widget>[
                Container(
              padding: EdgeInsets.all(10.0),
              child: Text(
              'Name :',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey,
                ),
            ),
            ),
              new DropdownButton<String>(
        items: <String>['ETF Topic #1','ETF Topic #2','ETF Topic #3','ETF Topic #4'].map((String value) {
    return new DropdownMenuItem<String>(
      value: value,
      child: new Text(value),
    );
  }).toList(),
  onChanged: (_) {},
  hint: Text('----------- Select a Topic Name ---------'),
),
              ],

            ),
            Row(
              children: <Widget>[
                Container(
              padding: EdgeInsets.all(10.0),
              child: Text(
              'Time Slot :',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey,
                ),
            ),
            ),
              new DropdownButton<String>(
        items: <String>['10.00 AM - 10.30 AM','10.00 AM - 10.30 AM','10.00 AM - 10.30 AM','10.00 AM - 10.30 AM'].map((String value) {
    return new DropdownMenuItem<String>(
      value: value,
      child: new Text(value),
    );
  }).toList(),
  onChanged: (_) {},
  hint: Text('------- Select a time slot -------'),
),
              ],

            ),
            Row(
              children: <Widget>[
                Container(
              padding: EdgeInsets.all(10.0),
              child: Text(
              'Volunteer :',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey,
                ),
            ),
            ),
              new DropdownButton<String>(
        items: <String>['Karan Arjun','Avinash Mahajan','Shailendra Tomar','Harshit Shah','Nitin Pabale'].map((String value) {
    return new DropdownMenuItem<String>(
      value: value,
      child: new Text(value),
    );
  }).toList(),
  hint: Text('selection Optional'),
  onChanged: (_) {},
),
              ],

            ),
            Center(
          child: Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: Icon(
                    Icons.bookmark,
                    color: Colors.grey,
                  ),
                  title: Text('The Enchanted Nightingale'),
                  subtitle:
                      Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                ),
                ButtonBar(
                  children: <Widget>[
                    FlatButton(
                      child: const Text('BUY TICKETS'),
                      onPressed: () {/* ... */},
                    ),
                    FlatButton(
                      child: const Text('LISTEN'),
                      onPressed: () {/* ... */},
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
          ],
        ), 
        );
  }
}
