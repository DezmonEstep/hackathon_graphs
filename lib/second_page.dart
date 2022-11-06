import 'package:flutter/material.dart';

var accounts = ["Checking", "Savings", "Growth"];

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Brightness brightness = Theme.of(context).brightness;
    const double progressvalue = 50.467;
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.

        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
                padding: EdgeInsets.fromLTRB(0, 70, 0, 30),
                child: ElevatedButton(
                  style: raisedButtonStyle,
                  onPressed: () {},
                  child: Text(accounts[0]),
                )),
            Container(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 30),
                child: ElevatedButton(
                  style: raisedButtonStyle,
                  onPressed: () {},
                  child: Text(accounts[1]),
                )),
            Container(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 30),
                child: ElevatedButton(
                  style: raisedButtonStyle,
                  onPressed: () {},
                  child: Text(accounts[2]),
                )),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
  onPrimary: Colors.black87,
  primary: Colors.grey[300],
  minimumSize: Size(150, 50),
  padding: EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(2)),
  ),
);

void account_manager() {}
int read_accounts() {
  return 0;
}
