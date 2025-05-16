void reverseList<T>(List<T> input) {
  final stack = <T>[];
  for (var item in input) {
    stack.add(item); // Push
  }

  while (stack.isNotEmpty) {
    print(stack.removeLast()); // Pop
  }
}

void main() {
  final list = [1, 2, 3, 4, 5];
  print("Reversed list:");
  reverseList(list);
}
