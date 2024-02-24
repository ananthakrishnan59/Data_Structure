class Node {
  int? data;
  Node? next;

  Node(int this.data);
}

class Queue {
  Node? front;
  Node? rear;

  enqueue(int data) {
    Node newNodde = Node(data);

    if (rear == null) {
      front = newNodde;
      rear = newNodde;
    } else {
      rear?.next = newNodde;
      rear = newNodde;
    }
  }

  dequeue() {
    if (front == null) {
      print('its empty');
      return;
    }
    front = front?.next;
    // if (front == null) {
    //   rear = null;
    // }
  }

  void display() {
    Node? temp = front;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }
}

void main() {
  Queue newqueue = new Queue();
  newqueue.enqueue(12);
  newqueue.enqueue(2);
  newqueue.enqueue(5);
  newqueue.enqueue(32);
  newqueue.enqueue(6);
  newqueue.dequeue();
  newqueue.display();
}
