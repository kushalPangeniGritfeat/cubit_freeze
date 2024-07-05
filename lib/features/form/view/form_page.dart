import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {

  @override
  Widget build(BuildContext context) {
    return   SafeArea(
      child: Scaffold(

        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
          child: Column(
            children: [
              const SizedBox(height: 60),
              const Text('Login',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 36)),
              const SizedBox(height: 60),
              textFieldContainer('Email'),
              textFieldContainer('Password'),
              textFieldContainer(''),

            ],
          ),
        ),
      ),
    );
  }
  Widget textFieldContainer(String title){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
          Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(color: Colors.blue[50],borderRadius: BorderRadius.circular(8)),
              child: const TextField(
                decoration: InputDecoration(border: InputBorder.none),
              )),
        ],
      ),
    );
  }
}
