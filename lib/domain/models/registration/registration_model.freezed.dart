// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'registration_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RegistrationModelTearOff {
  const _$RegistrationModelTearOff();

  _RegistrationModel call({String? name, String? phone, String? email}) {
    return _RegistrationModel(
      name: name,
      phone: phone,
      email: email,
    );
  }
}

/// @nodoc
const $RegistrationModel = _$RegistrationModelTearOff();

/// @nodoc
mixin _$RegistrationModel {
  String? get name => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegistrationModelCopyWith<RegistrationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationModelCopyWith<$Res> {
  factory $RegistrationModelCopyWith(
          RegistrationModel value, $Res Function(RegistrationModel) then) =
      _$RegistrationModelCopyWithImpl<$Res>;
  $Res call({String? name, String? phone, String? email});
}

/// @nodoc
class _$RegistrationModelCopyWithImpl<$Res>
    implements $RegistrationModelCopyWith<$Res> {
  _$RegistrationModelCopyWithImpl(this._value, this._then);

  final RegistrationModel _value;
  // ignore: unused_field
  final $Res Function(RegistrationModel) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? phone = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$RegistrationModelCopyWith<$Res>
    implements $RegistrationModelCopyWith<$Res> {
  factory _$RegistrationModelCopyWith(
          _RegistrationModel value, $Res Function(_RegistrationModel) then) =
      __$RegistrationModelCopyWithImpl<$Res>;
  @override
  $Res call({String? name, String? phone, String? email});
}

/// @nodoc
class __$RegistrationModelCopyWithImpl<$Res>
    extends _$RegistrationModelCopyWithImpl<$Res>
    implements _$RegistrationModelCopyWith<$Res> {
  __$RegistrationModelCopyWithImpl(
      _RegistrationModel _value, $Res Function(_RegistrationModel) _then)
      : super(_value, (v) => _then(v as _RegistrationModel));

  @override
  _RegistrationModel get _value => super._value as _RegistrationModel;

  @override
  $Res call({
    Object? name = freezed,
    Object? phone = freezed,
    Object? email = freezed,
  }) {
    return _then(_RegistrationModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_RegistrationModel implements _RegistrationModel {
  _$_RegistrationModel({this.name, this.phone, this.email});

  @override
  final String? name;
  @override
  final String? phone;
  @override
  final String? email;

  @override
  String toString() {
    return 'RegistrationModel(name: $name, phone: $phone, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegistrationModel &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(email);

  @JsonKey(ignore: true)
  @override
  _$RegistrationModelCopyWith<_RegistrationModel> get copyWith =>
      __$RegistrationModelCopyWithImpl<_RegistrationModel>(this, _$identity);
}

abstract class _RegistrationModel implements RegistrationModel {
  factory _RegistrationModel({String? name, String? phone, String? email}) =
      _$_RegistrationModel;

  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get phone => throw _privateConstructorUsedError;
  @override
  String? get email => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RegistrationModelCopyWith<_RegistrationModel> get copyWith =>
      throw _privateConstructorUsedError;
}
