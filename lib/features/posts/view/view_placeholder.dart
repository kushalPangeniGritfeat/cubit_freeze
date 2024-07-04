import 'dart:developer';

import 'package:cubit_freeze/cubit/placeholder_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/placeholder_state.dart';

class ViewPlaceholder extends StatefulWidget {
  const ViewPlaceholder({super.key});

  @override
  State<ViewPlaceholder> createState() => _ViewPlaceholderState();
}

class _ViewPlaceholderState extends State<ViewPlaceholder> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PlaceholderCubit(),
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(title: const Text('Posts')),
          body: BlocBuilder<PlaceholderCubit, PlaceholderState>(
            builder: (context, state) {
              var cubit = context.read<PlaceholderCubit>();
              return state.when(
                  initial: () {
                    return const Text('Initializing');
                  },
                  loading: () {
                    return const Center(child: CircularProgressIndicator());
                  },
                  success: (e) {
                    return ListView.builder(
                        itemCount: e.length,
                        itemBuilder: (context, index) {
                          if (index == 0) {
                            return TextButton(
                                onPressed: () {
                                  cubit.fetchPost();
                                },
                                child: const Text("Success Fetch again"));
                          } else {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ListTile(
                                leading: Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.teal[50]),
                                    child: Center(
                                        child: Text(
                                      index.toString(),
                                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                                    ))),
                                title: Text(
                                  e[index].title.toUpperCase(),
                                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                ),
                                subtitle: Text(e[index].body),
                              ),
                            );
                          }
                        });
                  },
                  error: (e) => TextButton(
                      onPressed: () {
                        cubit.fetchPost();
                      },
                      child: Center(child: Text('Error $e'))));
            },
          ),
        ),
      ),
    );
  }
}
