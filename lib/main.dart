import 'package:flutter/material.dart';

import 'placeholder/view/view_placeholder.dart';

void main(){
  runApp(const CubitFreeze());
}

class CubitFreeze extends StatelessWidget {
  const CubitFreeze({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
        home:  ViewPlaceholder());
  }
}
