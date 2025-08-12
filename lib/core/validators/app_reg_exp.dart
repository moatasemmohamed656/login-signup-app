class AppRegExp {
  static RegExp password = RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$');
  static RegExp phone = RegExp(r'^01[0-2,5]{1}[0-9]{8}$');
  static RegExp numbers = RegExp(r'[0-9]');
  static RegExp email = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
  static RegExp capitalLetter = RegExp(r'[A-Z]+');
  static RegExp smallLetter = RegExp(r'[a-z]+');
  static RegExp space = RegExp(r'\s');
  static RegExp specialCharacters = RegExp(r'[^\w\s\u0600-\u06FF]');
  static final RegExp usernameLettersOnly = RegExp(r'^[a-zA-Z]*$');
}
