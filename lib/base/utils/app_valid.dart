
import 'common_utils.dart';

String? validateEmail(String? value) {
  if (value!.trim().isEmpty) {
    return string("error.error_email_empty");
  }
 if (!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(value)) {
    return string("error.error_email_invalid");
  }
  return null;
}

String? validatePassword(String? value) {
  if (value!.trim().isEmpty) {
    return string("error.password_email_empty");
  }
  return null;
}

String? validateName(String? value) {
  if (value!.trim().isEmpty) {
    return string("error.error_name_empty");
  }
  return null;
}

String? validateUsername(String? value) {
  if (value!.trim().isEmpty) {
    return string("error.error_username_empty");
  }
  return null;
}

String? validatePhone(String? value) {
  if (value!.trim().isEmpty) {
    return string("error_phone_number_empty");
  }
  if (!RegExp(r"^[0-9]{10}$").hasMatch(value)) {
    return string("error_phone_number_invalid");
  }
  return null;
}