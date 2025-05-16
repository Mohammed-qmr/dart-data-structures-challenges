class Node<T> {
  T value;
  Node<T>? next;
  Node(this.value, [this.next]);
}

Node<T>? reverseList<T>(Node<T>? head) {
  Node<T>? prev;
  var current = head;

  while (current != null) {
    final next = current.next;
    current.next = prev;
    prev = current;
    current = next;
  }

  return prev;
}

void printList<T>(Node<T>? head) {
  var current = head;
  while (current != null) {
    print(current.value);
    current = current.next;
  }
}

void main() {
  final n3 = Node(3);
  final n2 = Node(2, n3);
  final n1 = Node(1, n2);

  final reversed = reverseList(n1);
  print("Reversed Linked List:");
  printList(reversed);
}
