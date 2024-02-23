class EValidator {
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required.';
    }
    // Regular Expression for Email validation
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if (!emailRegExp.hasMatch(value)) {
      return 'Please enter a valid email address.';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is Required';
    }
    //Check for minimum password length
    if (value.length < 6) {
      return 'Password must be atleast 6 characters long';
    }
    //Check for numbers
    if (!value.contains(
      RegExp(r'[0-9]'),
    )) {
      return 'Password must contain at least one number';
    }
    //check for uppercase letters
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return "Password should contain at least one uppercase letter";
    }
    //check for special characters
    if (!value.contains(RegExp(r'[!@#$%*()]'))) {
      return 'Password must contain atleast one special character';
    }

    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Phone number is required';
    }
    // Regular Expression for phone numbers
    final phoneRegExp = RegExp(r'^\d(10)$');
    if (!phoneRegExp.hasMatch(value)) {
      return 'Invalid phone number format (10 digits required)';
    }
    return null;
  }
}
