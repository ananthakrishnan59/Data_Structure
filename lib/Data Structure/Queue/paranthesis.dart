// bool isValid(String s) {
//   List<String> stack = [];
//   Map<String, String> mapping = {
//     ')': '(',
//     '}': '{',
//     ']': '[',
//   };

//   for (var char in s.split('')) {
//     if (mapping.containsValue(char)) {
//       stack.add(char);
//     } else {
//       if (stack.isEmpty || stack.last != mapping[char]) {
//         return false;
//       }
//       stack.removeLast();
//     }
//   }

//   return stack.isEmpty;
// }

// void main() {
//   print(isValid("()"));       // Output: true
//   print(isValid("()[]{}"));   // Output: true
//   print(isValid("(]"));       // Output: false
// }

bool isValid(String s) {
  List<String> stack = [];
  Map<String, String> mapping = {
    ')': '(',
    '}': '{',
    ']': '[',
  };

  for (var char in s.split('')) {
    if (mapping.containsValue(char)) {
      stack.add(char);
    } else {
      if (stack.isEmpty || stack.last != mapping[char]) {
        return false;
      }
      stack.removeLast();
    }
  }
  return stack.isEmpty;
}

void main() {
  print(isValid('{}'));
  print(isValid("{}[]"));
  print(isValid('{})}'));
}
