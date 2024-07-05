import 'dart:developer';

import 'package:cubit_freeze/features/posts/model/post_model.dart';
import 'package:cubit_freeze/network/api_services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'placeholder_state.dart';

class PlaceholderCubit extends Cubit<PlaceholderState> {
  PlaceholderCubit() : super(const PlaceholderState.loading()) {
    fetchPost();
  }

  Future<void> fetchPost() async {
    emit(const PlaceholderState.loading());
    try {
      final response = await ApiServices().get(endPoint: 'https://jsonplaceholder.typicode.com/posts');

      List<PostModel> listOfPosts = [];
      if (response != null && response.statusCode == 200) {
        List<dynamic> responseData = response.data as List<dynamic>;
        listOfPosts = responseData.map((pm) => PostModel.fromJson(pm)).toList();
      }
      emit(PlaceholderState.success(listOfPosts));
    } catch (e) {
      log('Catch Error ===> $e');
      emit(PlaceholderState.error('Error loading posts; ${e.toString()}'));
    }
  }

  void errorState() {
    emit(const PlaceholderState.error('errorMessage'));
  }
}
