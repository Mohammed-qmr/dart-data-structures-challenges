class Node<T> {
  T value;
  Node<T>? next;
  Node(this.value, [this.next]);
}

Node<T>? findMiddle<T>(Node<T>? head) {
  var slow = head;
  var fast = head;

  while (fast != null && fast.next != null) {
    slow = slow!.next;
    fast = fast.next!.next;
  }

  return slow;
}

void main() {
  final n5 = Node(5);
  final n4 = Node(4, n5);
  final n3 = Node(3, n4);
  final n2 = Node(2, n3);
  final n1 = Node(1, n2);

  final middle = findMiddle(n1);
  print("Middle node: ${middle?.value}");
}
