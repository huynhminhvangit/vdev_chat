class Validator {
  static String? isValidEmail(String? value) {
    if(value!.isEmpty) {
      return 'Email is required';
    }
    Pattern pattern = r"[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$";
    RegExp regExp = RegExp(pattern.toString());
    if (!regExp.hasMatch(value)) {
      return 'Enter a valid email address';
    }
    return null;
  }

  static String? isValidPassword(String? value) {
    if(value!.isEmpty) {
      return 'Password is required';
    }
    Pattern pattern = r"(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}";
    RegExp regExp = RegExp(pattern.toString());
    if (!regExp.hasMatch(value)) {
      return 'One number, uppercase, lowercase and at least 8 characters';
    }
    return null;
  }

  static String? isValidPhone(String? value) {
    if(value!.isEmpty) {
      return 'Phone is required';
    }
    Pattern pattern = r"(0[1|2|3|4|5|6|7|8|9])+([0-9]{8})";
    RegExp regExp = RegExp(pattern.toString());
    if (!regExp.hasMatch(value)) {
      return 'Phone number is not in the correct formats';
    }
    return null;
  }

  static String? isValidName(String? value) {
    if(value!.isEmpty) {
      return 'Name is required';
    }
    Pattern pattern = r"^[a-zA-Z]+(?:\s[a-zA-Z]+)+$";
    RegExp regExp = RegExp(pattern.toString());
    if (!regExp.hasMatch(value)) {
      return 'Name is not in the correct formats';
    }
    return null;
  }
}