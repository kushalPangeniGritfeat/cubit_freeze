import 'package:freezed_annotation/freezed_annotation.dart';
part 'email_password.freezed.dart';
part 'email_password.g.dart';

@freezed
class EmailPassword with _$EmailPassword {
  const factory EmailPassword({required String email, required String password })= _EmailPassword;
  factory EmailPassword.fromJson(Map<String,dynamic> json) => _$EmailPasswordFromJson(json);
}






