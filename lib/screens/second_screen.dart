import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../components/numbered_day_grid.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key, required this.dropDownNumber})
      : super(key: key);
  final int dropDownNumber;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$dropDownNumber'),
      ),
      body: Center(
        child: Column(
          children: [
            NumberedDayGrid(
              selectedDays: dropDownNumber,
            ),
          ],
        ),
      ),
    );
  }
}
