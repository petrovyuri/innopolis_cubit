import 'package:freezed_annotation/freezed_annotation.dart';

part 'registration_model.freezed.dart';

@freezed
class RegistrationModel with _$RegistrationModel {
  factory RegistrationModel({
    String? name,
    String? phone,
    String? email,
  }) = _RegistrationModel;
}
