import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class FirstScreen extends StatelessWidget {
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
                padding: EdgeInsets.fromLTRB(80, 60, 80, 10),
                child: Text(
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.cyan,
                      fontStyle: FontStyle.italic,
                      letterSpacing: 7,
                      wordSpacing: 8,
                    ),
                    "Account Activity")),
            Container(
              padding: EdgeInsets.fromLTRB(80, 5, 80, 30),
              child: SizedBox(
                width: 980,
                height: 300,
                child: SfCartesianChart(
                    // Initialize category axis
                    primaryXAxis: CategoryAxis(),
                    series: <LineSeries<SalesData, String>>[
                      LineSeries<SalesData, String>(
                          // Bind data source
                          dataSource: <SalesData>[
                            SalesData('1', 35),
                            SalesData('2', 28),
                            SalesData('3', 34),
                            SalesData('4', 32),
                            SalesData('5', 40)
                          ],
                          xValueMapper: (SalesData sales, _) => sales.year,
                          yValueMapper: (SalesData sales, _) => sales.sales)
                    ]),
              ),
            ),
            /*ListView(
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.map),
                  title: Text('Account1'),
                ),
                ListTile(
                  leading: Icon(Icons.photo_album),
                  title: Text('Account2'),
                ),
                ListTile(
                  leading: Icon(Icons.phone),
                  title: Text('Account3'),
                ),
              ],
            ),*/
            Container(
                padding: EdgeInsets.fromLTRB(80, 0, 80, 20),
                child: Text("Finacial Risk")),
            Container(
                padding: EdgeInsets.fromLTRB(80, 0, 80, 20),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: SizedBox(
                        height: 30,
                        child: SfLinearGauge(
                          showTicks: false,
                          showLabels: false,
                          animateAxis: true,
                          axisTrackStyle: LinearAxisTrackStyle(
                            thickness: 30,
                            edgeStyle: LinearEdgeStyle.bothCurve,
                            borderWidth: 1,
                            borderColor: brightness == Brightness.dark
                                ? const Color(0xff898989)
                                : Colors.grey[350],
                            color: brightness == Brightness.dark
                                ? Colors.transparent
                                : Colors.grey[350],
                          ),
                          barPointers: const <LinearBarPointer>[
                            LinearBarPointer(
                                value: progressvalue,
                                thickness: 30,
                                edgeStyle: LinearEdgeStyle.bothCurve,
                                color: Colors.blue),
                          ],
                        ))))
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class SalesData {
  SalesData(this.year, this.sales);
  final String year;
  final double sales;
}
