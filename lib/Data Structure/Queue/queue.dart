class Queue {
  List<int> items = [];

  enqueue(int elements) {
    items.add(elements);
  }

  dequeue() {
    return items.removeAt(0);
  }

  isEmpty() {
    return items.isEmpty;
  }

  peak() {
    if (!isEmpty()) {
      return items[0];
    }
    return null;
  }

  size() {
    return items.length;
  }

  display() {
    return (items.toString());
  }
}

void main() {
  Queue queue = Queue();

  print(queue.isEmpty());
  queue.enqueue(10);
  queue.enqueue(5);
  queue.enqueue(8);
  queue.display();
  print(queue.size());
  queue.dequeue();
  queue.display();
  print(queue.peak());
  print(queue.size());
  print(queue.isEmpty());
}
