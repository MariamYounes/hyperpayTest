import 'package:flutter/material.dart';
import 'package:flutter_app/ready_ui.dart';

import 'custom_ui.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Hyperpay Demo'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Hyperpay Flutter Demo",
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 20),
              RaisedButton(
                child: Text('Ready UI'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Ready_UI(),
                    ),
                  );
                },
                color: Colors.orange,
                padding: EdgeInsets.fromLTRB(22, 0, 22, 0),
              ),
              SizedBox(height: 20),
              RaisedButton(
                child: Text('Custom UI'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => custom_UI()),
                  );
                },
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }

  // Get battery level.

}
