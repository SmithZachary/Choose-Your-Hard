import 'package:choose_your_hard/screens/second_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Text('Pick Your Hard'),
            DropDownSelector(),
          ],
        ),
      ),
    );
  }
}

class DropDownSelector extends StatefulWidget {
  const DropDownSelector({Key? key}) : super(key: key);

  @override
  _DropDownSelectorState createState() => _DropDownSelectorState();
}

class _DropDownSelectorState extends State<DropDownSelector> {
  String dropdownValue = '15 Days';
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      hint: const Text('Select Days'),
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
          switch (newValue) {
            case '15 Days':
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SecondScreen(
                    dropDownNumber: 15,
                  ),
                ),
              );
              break;
            case '30 Days':
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const SecondScreen(
                          dropDownNumber: 30,
                        )),
              );
              break;
            case '75 Days':
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const SecondScreen(
                          dropDownNumber: 75,
                        )),
              );
              break;
            case '100 Days':
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const SecondScreen(
                          dropDownNumber: 100,
                        )),
              );
          }
        });
      },
      items: <String>['15 Days', '30 Days', '75 Days', '100 Days']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
