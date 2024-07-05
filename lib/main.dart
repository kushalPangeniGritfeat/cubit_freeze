import 'package:cubit_freeze/features/navigation_page.dart';
import 'package:flutter/material.dart';


void main(){
  runApp( CubitFreeze());
}

class CubitFreeze extends StatelessWidget {
  const CubitFreeze({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
        home:  NavigationPage());
  }
}
