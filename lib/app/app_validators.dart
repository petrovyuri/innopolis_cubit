import 'package:form_field_validator/form_field_validator.dart';

abstract class AppValidators {
  static final RequiredValidator emptyFieldValidator =
      RequiredValidator(errorText: "Пустое поле");

  static final MultiValidator phoneValidator = MultiValidator([
    emptyFieldValidator,
    PatternValidator(r'^(8|\+[1-99])[\ ](\(\d{3}\))[\d\- ]{10}$',
        errorText: "Неправильный номер")
  ]);

  static final EmailValidator emailValidator =
      EmailValidator(errorText: "Неправильный email");
}
