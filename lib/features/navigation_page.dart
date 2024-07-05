import 'package:flutter/material.dart';

import 'form/view/form_page.dart';
import 'posts/view/view_placeholder.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  var screens = [const ViewPlaceholder(),const FormPage()];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (e){
          setState(() {

            currentIndex = e;
          });
        },
        items: const [BottomNavigationBarItem(icon: Icon(Icons.local_post_office),label: 'Post'),BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),],
      ),
    );

  }
}
