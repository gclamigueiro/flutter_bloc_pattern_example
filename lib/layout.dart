import 'package:flutter/material.dart';
import 'timer_app.dart';
import 'counter_app.dart';

class Layout extends StatefulWidget {
  @override
  _LayoutState createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  int indexTap = 0;
  final List<Widget> widgetsChildren = [
    TimerApp(),
    CounterApp(),
  ];

  void onTapTapped(int index) {
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetsChildren[indexTap],
      bottomNavigationBar: Theme(
        data: Theme.of(context)
            .copyWith(canvasColor: Colors.blueGrey, primaryColor: Colors.white),
        child: BottomNavigationBar(
          onTap: onTapTapped,
          currentIndex: indexTap,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.timer), title: Text("")),
            BottomNavigationBarItem(icon: Icon(Icons.cached), title: Text("")),
          ],
        ),
      ),
      // appBar: AppBar(title: Text('Hola Mundo!!')),
    );
  }
}
