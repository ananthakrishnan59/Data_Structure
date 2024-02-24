class Node {
  int? value;
  Node? next;
  Node(int value) {
    this.value = value;
  }
}

class LinkedList {
  Node? head, tail;
  void addNode(int value) {
    Node newNode = Node(value);
    if (head == null) {
      head = newNode;
      tail = newNode;
      return;
    }
    if (head != null) {
      tail!.next = newNode;
      tail = newNode;
    }
  }

  void display() {
    Node? curremt = head;
    while (curremt != null) {
      print(curremt.value);
      curremt = curremt.next;
    }
  }
}

void main() {
  LinkedList ls = LinkedList();
  ls.addNode(32);
  ls.addNode(23);
  ls.display(); 
}
