findCharIndex(String str, String char) {
  for (int i = 0; i < str.length; i++) {
    if (str[i] == char) {
      return i;
    }
  }
  return -1;
}

concatenateStrings(String str1, String str2) {
  return str1 + str2;
}

reverseString(String str) {
  String reversed = "";
  for (int i = str.length - 1; i >= 0; i--) {
    reversed = reversed + str[i];
  }
  return reversed;
}

isPalidrome(String str) {
  String reversed = reverseString(str);
  return str == reversed;
}

toLowerCase(String str) {
  String lowerCased = '';
  for (int i = 0; i < str.length; i++) {
    lowerCased = lowerCased + str[i].toLowerCase();
  }
  return lowerCased;
}

toUpperCase(String str) {
  String upperCase = '';
  for (int i = 0; i < str.length; i++) {
    upperCase = upperCase + str[i].toUpperCase();
  }
  return upperCase;
}

void main() {
  String myString = "Hello, World!";
  print("Original String: $myString");

  print("Index of 'o' in the string: ${findCharIndex(myString, 'o')}");

  String newString = concatenateStrings(myString, 'How are you?');
  print('Concatenated String: $newString');

  String reversedString = reverseString(myString);
  print('Reversed String: $reversedString');

  String lowerCaseString = toLowerCase(myString);
  print('Lowercased String: $lowerCaseString');

  String upperCaseString = toUpperCase(myString);
  print("Uppercased String: $upperCaseString");
}
