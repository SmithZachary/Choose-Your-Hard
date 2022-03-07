import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../presentation/theme.dart';
import '../screens/home_screen.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => ThemeNotifier(),
        child: Consumer<ThemeNotifier>(
            builder: (context, ThemeNotifier notifier, child) {
          return MaterialApp(
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            theme: notifier.theme,
            home: const HomeScreen(),
          );
        }));
  }
}
