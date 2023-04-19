class Validations {
  static String validateEmpty(String input, String hint) {
    if (input.isEmpty) {
      return "$hint";
    } else {
      return "";
    }
  }

  static String validateGst(String input, String hint) {
    var gstPattern =
        r'^([0][1-9]|[1-2][0-9]|[3][0-7])([a-zA-Z]{5}[0-9]{4}[a-zA-Z]{1}[1-9a-zA-Z]{1}[zZ]{1}[0-9a-zA-Z]{1})+$';
    RegExp regex = RegExp(gstPattern);
    if (input.isEmpty) {
      return "$hint";
    } else if (!regex.hasMatch(input)) {
      return "Please enter valid $hint";
    } else {
      return "";
    }
  }

  static String validateName(String input, String hint) {
    var pattern = '[a-zA-Z]';
    RegExp regex = RegExp(pattern);

    if (input.isEmpty) {
      return "$hint";
    } else if (input.length < 2) {
      return "Please enter valid $hint";
    } else if (!regex.hasMatch(input)) {
      return "Please enter valid $hint";
    } else {
      return "";
    }
  }

  static String validateEmail(String input, String hint) {
    if (validateEmpty(input, hint).isEmpty) {
      var pattern =
          r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
      RegExp regex = RegExp(pattern);
      if (!regex.hasMatch(input)) {
        return "Please enter valid email address";
      } else {
        return "";
      }
    } else {
      return "$hint";
    }
  }

  static String validateMobile(String input, String hint) {
    if (input.isEmpty) {
      return "$hint";
    } else if (input.length < 6 || input.length > 16) {
      return "Please enter valid mobile number";
    } else {
      return "";
    }
  }

  static String validateUserName(String input, String hint) {
    RegExp validCharacters = RegExp(r'^[a-zA-Z0-9_\-@.]+$');

    if (input.isEmpty) {
      return "$hint";
    } else if (input.length < 3) {
      return "Please enter valid name";
    } else if (!validCharacters.hasMatch(input)) {
      return "Please enter valid name";
    } else {
      return "";
    }
  }

  static String validatePassword(String input, String hint) {
    // if (input.isEmpty) {
    //   return "$hint";
    // } else if (input.length < 8 || input.length > 16) {
    //   return "Password must be between 8-16 characters";
    // } else {
    //   return "";
    // }
    var validPass = "Please enter valid password";
    if (input.isEmpty) {
      return hint;
    } else if (input.length < 6 || input.length > 16) {
      return "Password must be between 8-16 characters";
    } else if (!RegExp('.*[A-Z].*').hasMatch(input)) {
      return "Ensure password has one uppercase letters";
    } else if (!RegExp('.*[a-z].*').hasMatch(input)) {
      return "Ensure password has one lower letters";
    } else if (!RegExp('.*[!@#\$%^&*0-9].*').hasMatch(input)) {
      return "Ensure password has one special character";
    }
    if (!RegExp('.*[0-9].*').hasMatch(input)) {
      return "Ensure password has one digit";
    } else {
      return "";
    }
  }

  static String validateAmount(String input, String hint) {
    if (input.isEmpty) {
      return "Please enter amount";
    } else {
      return "";
    }
  }

  static String validateCVV(String input, String hint) {
    if (input.isEmpty || input.length < 3) {
      return "Invalid $hint";
    } else {
      return "";
    }
  }

  static String validatePanNumber(String input, String hint) {
    var pattern = r'[A-Z]{5}[0-9]{4}[A-Z]{1}';
    RegExp regex = RegExp(pattern);
    if (input.isEmpty) {
      return "Please enter PAN Number";
    } else if (!regex.hasMatch(input)) {
      return "Enter valid PAN number";
    } else if (input.length != 10) {
      return "Enter valid PAN number";
    } else {
      return "";
    }
  }

  static bool isPanNumber(String value) {
    RegExp regex = RegExp(r'[A-Z]{5}[0-9]{4}[A-Z]{1}');

    if (!regex.hasMatch(value)) {
      return false;
    } else {
      return true;
    }
  }

  static String cardExpiryDate(String input, String hint) {
    var split = input.split('/');

    if (input.isEmpty) {
      return "Please enter $hint";
    } else if (int.parse(split[0]) >= 13) {
      return "Enter valid date ";
    } else if (input.length != 7) {
      return "Enter valid date ";
    } else {
      return "";
    }
  }

  static String validateCardNumber(String input, String hint) {
    if (input.isEmpty) {
      return "Please enter $hint";
    } else if (input.length != 19) {
      return "Please enter validate number";
    } else {
      return "";
    }
  }

  static bool isCardNumberValid(String value) {
    RegExp regex = RegExp(r'^-?[0-9]+$');
    if (!regex.hasMatch(value)) {
      return false;
    } else {
      return true;
    }
  }

  static bool isMobileNumber(String value) {
    RegExp regex = RegExp(r'^-?[0-9]+$');
    if (!regex.hasMatch(value)) {
      return false;
    } else {
      return true;
    }
  }
}
