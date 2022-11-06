import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import './first_page.dart';
import './second_page.dart';
import './third_page.dart';

void main() {
  runApp(MyApp());
}

void update() {
  //
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Acumen Savings'),
            centerTitle: true,
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.monetization_on_sharp), text: "Home"),
                Tab(icon: Icon(Icons.notes_outlined), text: "Accounts"),
                Tab(icon: Icon(Icons.notes_outlined), text: "Subscriptions")
              ],
            ),
          ),
          body: TabBarView(
            children: [
              FirstScreen(),
              SecondScreen(),
              ThirdScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
