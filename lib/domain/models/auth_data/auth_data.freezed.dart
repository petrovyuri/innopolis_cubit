// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'auth_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthData _$AuthDataFromJson(Map<String, dynamic> json) {
  return _AuthData.fromJson(json);
}

/// @nodoc
class _$AuthDataTearOff {
  const _$AuthDataTearOff();

  _AuthData call({String? apiToken}) {
    return _AuthData(
      apiToken: apiToken,
    );
  }

  AuthData fromJson(Map<String, Object> json) {
    return AuthData.fromJson(json);
  }
}

/// @nodoc
const $AuthData = _$AuthDataTearOff();

/// @nodoc
mixin _$AuthData {
  String? get apiToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthDataCopyWith<AuthData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthDataCopyWith<$Res> {
  factory $AuthDataCopyWith(AuthData value, $Res Function(AuthData) then) =
      _$AuthDataCopyWithImpl<$Res>;
  $Res call({String? apiToken});
}

/// @nodoc
class _$AuthDataCopyWithImpl<$Res> implements $AuthDataCopyWith<$Res> {
  _$AuthDataCopyWithImpl(this._value, this._then);

  final AuthData _value;
  // ignore: unused_field
  final $Res Function(AuthData) _then;

  @override
  $Res call({
    Object? apiToken = freezed,
  }) {
    return _then(_value.copyWith(
      apiToken: apiToken == freezed
          ? _value.apiToken
          : apiToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$AuthDataCopyWith<$Res> implements $AuthDataCopyWith<$Res> {
  factory _$AuthDataCopyWith(_AuthData value, $Res Function(_AuthData) then) =
      __$AuthDataCopyWithImpl<$Res>;
  @override
  $Res call({String? apiToken});
}

/// @nodoc
class __$AuthDataCopyWithImpl<$Res> extends _$AuthDataCopyWithImpl<$Res>
    implements _$AuthDataCopyWith<$Res> {
  __$AuthDataCopyWithImpl(_AuthData _value, $Res Function(_AuthData) _then)
      : super(_value, (v) => _then(v as _AuthData));

  @override
  _AuthData get _value => super._value as _AuthData;

  @override
  $Res call({
    Object? apiToken = freezed,
  }) {
    return _then(_AuthData(
      apiToken: apiToken == freezed
          ? _value.apiToken
          : apiToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthData implements _AuthData {
  _$_AuthData({this.apiToken});

  factory _$_AuthData.fromJson(Map<String, dynamic> json) =>
      _$_$_AuthDataFromJson(json);

  @override
  final String? apiToken;

  @override
  String toString() {
    return 'AuthData(apiToken: $apiToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthData &&
            (identical(other.apiToken, apiToken) ||
                const DeepCollectionEquality()
                    .equals(other.apiToken, apiToken)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(apiToken);

  @JsonKey(ignore: true)
  @override
  _$AuthDataCopyWith<_AuthData> get copyWith =>
      __$AuthDataCopyWithImpl<_AuthData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AuthDataToJson(this);
  }
}

abstract class _AuthData implements AuthData {
  factory _AuthData({String? apiToken}) = _$_AuthData;

  factory _AuthData.fromJson(Map<String, dynamic> json) = _$_AuthData.fromJson;

  @override
  String? get apiToken => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AuthDataCopyWith<_AuthData> get copyWith =>
      throw _privateConstructorUsedError;
}
