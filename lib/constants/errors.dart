final RegExp emailValidatorRegex = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+"); // regex to validate an email address

// error messages
const String kemailNullError = 'Please enter your email address!';
const String kInvalidEmailError = 'Please enter a valid email address!';
const String kPasswordNullError = 'Please enter your password!';
const String kShortPasswordError = 'Password is too short!';
const String kPasswordMatchError = "Passwords didn't match!";