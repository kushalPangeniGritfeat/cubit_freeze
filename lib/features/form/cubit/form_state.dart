import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_state.freezed.dart';


@freezed
class FormState with _$FormState {
  const factory FormState.initial() = _Initial;

  const factory FormState.invalid() = _Invalid;

  const factory FormState.valid() = _Valid;

  const factory FormState.error(String errorMessage) = _Error;

}
