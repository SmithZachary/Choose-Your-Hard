import 'package:choose_your_hard/components/single_day.dart';
import 'package:flutter/material.dart';

class NumberedDayGrid extends StatelessWidget {
  const NumberedDayGrid({Key? key, required this.selectedDays})
      : super(key: key);
  final int selectedDays;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 1.2,
        child: GridView.count(
          shrinkWrap: true,
          crossAxisCount: 5,
          children: List.generate(selectedDays, (index) {
            return SingleDay(dayIndex: index);
          }),
        ),
      ),
    );
  }
}
