
import 'package:cubit_freeze/placeholder/model/post_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'placeholder_state.freezed.dart';


@freezed
class PlaceholderState with _$PlaceholderState {
  const factory PlaceholderState.initial() = _Initial;
  const factory PlaceholderState.loading() = _Loading;
  const factory PlaceholderState.success(List<PostModel> listOfPosts) = _Success;
  const factory PlaceholderState.error(String errorMessage) = _Error;

}
