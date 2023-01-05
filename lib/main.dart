import 'package:flutter/material.dart';
import 'package:instagram_ui/responsive/mobile_screen_layout.dart';
import 'package:instagram_ui/responsive/responsive_layout_screen.dart';
import 'package:instagram_ui/responsive/web_screen_layout.dart';
import 'package:instagram_ui/screens/login_screen.dart';
import 'package:instagram_ui/screens/signup_screen.dart';
import 'package:instagram_ui/utils/color.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram Clone',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor
      ),
      home: const ResponsiveLayout(mobileScreenLayout: MobileScreenLayout() , webScreenLayout: WebScreenLayout() ,)

    );
  }
}

