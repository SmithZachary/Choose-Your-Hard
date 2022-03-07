import 'package:flutter/material.dart';

class SingleDay extends StatefulWidget {
  SingleDay({Key? key, required this.dayIndex}) : super(key: key);
  int dayIndex;
  @override
  _SingleDayState createState() => _SingleDayState();
}

class _SingleDayState extends State<SingleDay> {
  late Color color;
  @override
  void initState() {
    super.initState();
    color = Colors.white;
  }

  Widget build(BuildContext context) {
    var day = widget.dayIndex + 1;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(color: color),
        child: GestureDetector(
            onTap: () {
              print('Tap');
              setState(() {
                color = Colors.green;
              });
            },
            onLongPress: () {
              print('Tap2');
              setState(() {
                color = Colors.white;
              });
            },
            child: Text('$day')),
      ),
    );
  }
}