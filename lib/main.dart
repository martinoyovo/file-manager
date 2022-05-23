import 'package:file_manager/presentation/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'file_manager',
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      theme: ThemeData(fontFamily: 'Gilroy'),
    );
  }
}
