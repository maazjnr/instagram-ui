import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_ui/utils/color.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text('This is mobile'),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: mobileBackgroundColor,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "",
                backgroundColor: mobileBackgroundColor),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_circle),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "",
            ),
          ]),
    );
  }
}
