

class Stack {
  List<int> items = [];

  void push(int item) {
    items.add(item);
  }

  int pop() {
    if (isEmpty()) {
      throw StateError('stack is empty');
    }
    return items.removeLast();
  }

  int peek() {
    return items[items.length - 1];
  }

  bool isEmpty() {
    return items.isEmpty;
  }

  int size() {
    return items.length;
  }

  void deleteMiddle() {
    if (isEmpty()) {
      throw StateError('stack is empty');
    }
    int middleIndex = size() ~/ 2;
    items.removeAt(middleIndex);
  }
}

void main() {
  Stack mysatck = Stack();
  mysatck.push(1);
  mysatck.push(2);
  mysatck.push(4);
  mysatck.push(6);
  mysatck.push(8);

  print("orginal stack ${mysatck.items}");

  print("peak ${mysatck.peek()}");

  mysatck.deleteMiddle();

  print("after delete middle ${mysatck.items}");
}
