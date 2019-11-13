import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calender APP',
      theme: ThemeData(
          primarySwatch: Colors.blueGrey
      ),
      home: MyCalenderPage(title: 'Calender App '),
      routes: <String, WidgetBuilder> {
          '/calendar_page': (BuildContext context) => new MyPage1(),
          '/list_page': (BuildContext context) => new MyPage2(),
      },
    );
  }
}




class MyCalenderPage extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  MyCalenderPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyCalenderPageState createState() => _MyCalenderPageState();

}


class _MyCalenderPageState extends State<MyCalenderPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        leading: Container(
          width: 120,
          height: 50,
          child: Image.asset("/Users/ainosh/private/flutter/downe/assets/images/image-1.jpg"),
        )
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("test_data"),
            Text(
              "test_data",
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: "CreatingTask",
        child: Icon(Icons.add),
      ),
      bottomNavigationBar:

      ,
    );
  }
}
//
//
//
//
//class _MyHomePageState extends State<MyHomePage> {
//  int _counter = 0;
//
//
//  void _incrementCounter() {
//    setState(() {
//      _counter++;
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        // Here we take the value from the MyHomePage object that was created by
//        // the App.build method, and use it to set our appbar title.
//        title: Text(widget.title),
//        backgroundColor: Colors.black87,
//      ),
//      body: Center(
//        // Center is a layout widget. It takes a single child and positions it
//        // in the middle of the parent.
//        child: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
//            Text(
//              'You have pushed the button this many times:',
//            ),
//            Text(
//              '$_counter',
//              style: Theme
//                  .of(context)
//                  .textTheme
//                  .display1,
//            ),
//          ],
//        ),
//      ),
//      floatingActionButton: FloatingActionButton(
//        onPressed: _incrementCounter,
//        tooltip: 'Increment',
//        child: Icon(Icons.add),
//      ), // This trailing comma makes auto-formatting nicer for build methods.
//    );
//  }
//}
