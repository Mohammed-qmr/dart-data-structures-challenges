class Node<T> {
  T value;
  Node<T>? next;
  Node(this.value, [this.next]);
}

Node<T>? removeAll<T>(Node<T>? head, T target) {
  while (head != null && head.value == target) {
    head = head.next;
  }

  var current = head;
  while (current?.next != null) {
    if (current!.next!.value == target) {
      current.next = current.next!.next;
    } else {
      current = current.next;
    }
  }

  return head;
}

void printList<T>(Node<T>? head) {
  var current = head;
  while (current != null) {
    print(current.value);
    current = current.next;
  }
}

void main() {
  final n5 = Node(2);
  final n4 = Node(1, n5);
  final n3 = Node(2, n4);
  final n2 = Node(2, n3);
  final n1 = Node(1, n2);

  final updated = removeAll(n1, 2);
  print("List after removing 2s:");
  printList(updated);
}
