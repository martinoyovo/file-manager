import 'package:file_manager/presentation/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'file_manager',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      theme: ThemeData(fontFamily: 'Gilroy'),
    );
  }
}
