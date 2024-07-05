// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'email_password.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EmailPassword _$EmailPasswordFromJson(Map<String, dynamic> json) {
  return _EmailPassword.fromJson(json);
}

/// @nodoc
mixin _$EmailPassword {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmailPasswordCopyWith<EmailPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailPasswordCopyWith<$Res> {
  factory $EmailPasswordCopyWith(
          EmailPassword value, $Res Function(EmailPassword) then) =
      _$EmailPasswordCopyWithImpl<$Res, EmailPassword>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$EmailPasswordCopyWithImpl<$Res, $Val extends EmailPassword>
    implements $EmailPasswordCopyWith<$Res> {
  _$EmailPasswordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmailPasswordImplCopyWith<$Res>
    implements $EmailPasswordCopyWith<$Res> {
  factory _$$EmailPasswordImplCopyWith(
          _$EmailPasswordImpl value, $Res Function(_$EmailPasswordImpl) then) =
      __$$EmailPasswordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$EmailPasswordImplCopyWithImpl<$Res>
    extends _$EmailPasswordCopyWithImpl<$Res, _$EmailPasswordImpl>
    implements _$$EmailPasswordImplCopyWith<$Res> {
  __$$EmailPasswordImplCopyWithImpl(
      _$EmailPasswordImpl _value, $Res Function(_$EmailPasswordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$EmailPasswordImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmailPasswordImpl implements _EmailPassword {
  const _$EmailPasswordImpl({required this.email, required this.password});

  factory _$EmailPasswordImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmailPasswordImplFromJson(json);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'EmailPassword(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailPasswordImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailPasswordImplCopyWith<_$EmailPasswordImpl> get copyWith =>
      __$$EmailPasswordImplCopyWithImpl<_$EmailPasswordImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmailPasswordImplToJson(
      this,
    );
  }
}

abstract class _EmailPassword implements EmailPassword {
  const factory _EmailPassword(
      {required final String email,
      required final String password}) = _$EmailPasswordImpl;

  factory _EmailPassword.fromJson(Map<String, dynamic> json) =
      _$EmailPasswordImpl.fromJson;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$EmailPasswordImplCopyWith<_$EmailPasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
