bool isBalanced(String expression) {
  final stack = <String>[];

  for (var char in expression.split('')) {
    if (char == '(') {
      stack.add(char);
    } else if (char == ')') {
      if (stack.isEmpty) return false;
      stack.removeLast();
    }
  }

  return stack.isEmpty;
}

void main() {
  print(isBalanced("(())")); // true
  print(isBalanced("(()"));  // false
}
