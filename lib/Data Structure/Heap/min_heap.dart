// class MinHeap {
//   List<int> heap= [];

//   int getParentIndex(int index) {
//     return ((index - 1) / 2).floor();
//   }

//   int getLeftChildIndex(int index) {
//     return 2 * index + 1;
//   }

//   int getRightChildIndex(int index) {
//     return 2 * index + 2;
//   }

//   void insert(int value) {
//     heap.add(value);
//     heapifyUp(heap.length - 1);
//   }

//   void heapifyUp(int index) {
//     int parentIndex = getParentIndex(index);
//     if (parentIndex >= 0 && heap[parentIndex] > heap[index]) {
//       swap(index, parentIndex);
//       heapifyUp(parentIndex);
//     }
//   }

//   void swap(int index1, int index2) {
//     int temp = heap[index1];
//     heap[index1] = heap[index2];
//     heap[index2] = temp;
//   }

//   int? remove() {
//     if (heap.length == 0) {
//       return null;
//     }

//     if (heap.length == 1) {
//       return heap.removeLast();
//     }

//     int min = heap[0];
//     heap[0] = heap.removeLast();
//     heapifyDown(0);

//     return min;
//   }

//   void heapifyDown(int index) {
//     int leftChildIndex = getLeftChildIndex(index);
//     int rightChildIndex = getRightChildIndex(index);
//     int minIndex = index;

//     if (leftChildIndex < heap.length && heap[leftChildIndex] < heap[minIndex]) {
//       minIndex = leftChildIndex;
//     }

//     if (rightChildIndex < heap.length && heap[rightChildIndex] < heap[minIndex]) {
//       minIndex = rightChildIndex;
//     }

//     if (minIndex != index) {
//       swap(index, minIndex);
//       heapifyDown(minIndex);
//     }
//   }

//   List<int> heapSort() {
//     List<int> sortedArray = [];

//     while (heap.length > 0) {
//       sortedArray.add(remove()!);
//     }

//     return sortedArray;
//   }

//   void buildHeapFromArray(List<int> array) {
//     heap = List.from(array);
//     int firstNonLeafIndex = ((array.length - 2) / 2).floor();

//     for (int i = firstNonLeafIndex; i >= 0; i--) {
//       heapifyDown(i);
//     }
//   }
// }

// void main() {
//   MinHeap minHeap = MinHeap();
//   minHeap.buildHeapFromArray([3, 7, 2, 1, 9, 8]);

//   print(minHeap.heap); // [1, 3, 2, 7, 9, 8]

//   print(minHeap.remove()); // 1

//   print(minHeap.heap); // [2, 3, 8, 7, 9]

//   print(minHeap.heapSort()); // [2, 3, 7, 8, 9]
// }

class Minheap {
  List<int> heap = [];

  int gertPArentIndex(int index) {
    return ((index - 1) ~/ 2).floor();
  }

  int getLeftChildIndex(int index) {
    return 2 * index + 1;
  }

  int getRightIndex(int index) {
    return 2 * index + 2;
  }

  void swap(int index1, int index2) {
    int temp = heap[index1];
    heap[index1] = heap[index2];
    heap[index2] = temp;
  }

  void heapifyUp(int index) {
    int parentIndex = gertPArentIndex(index);
    if (parentIndex >= 0 && heap[parentIndex] > heap[index]) {
      swap(index, parentIndex);
      heapifyUp(parentIndex);
    }
  }

  void heapifyDown(int index) {
    int leftChildIndex = getLeftChildIndex(index);
    int rightChildIndex = getRightIndex(index);
    int minIndex = index;
    if (leftChildIndex < heap.length && heap[leftChildIndex] < heap[minIndex]) {
      minIndex = leftChildIndex;
    }
    if (rightChildIndex < heap.length &&
        heap[rightChildIndex] < heap[minIndex]) {
      minIndex = rightChildIndex;
    }
    if (minIndex != index) {
      swap(index, minIndex);
      heapifyDown(minIndex);
    }
  }

  void insert(int value) {
    heap.add(value);
    heapifyUp(heap.length - 1);
  }

  int? remove() {
    if (heap.length == 0) {
      return null;
    }
    if (heap.length == 1) {
      return heap.removeLast();
    }

    int min = heap[0];
    heap[0] = heap.removeLast();
    heapifyDown(0);
    return min;
  }

  List<int> heapSort() {
    List<int> sortedArray = [];
    while (heap.isNotEmpty) {
      sortedArray.add(remove()!);
    }
    return sortedArray;
  }

  void buildHeapFromArray(List<int> array) {
    heap = List.from(array);
    int firstNonFeatherIndex = ((array.length - 2) / 2).floor();
    for (int i = firstNonFeatherIndex; i >= 0; i--) {
      heapifyDown(i);
    }
  }
}

void main() {
  Minheap newm = Minheap();
  newm.buildHeapFromArray([3, 7, 2, 1, 9, 8]);
  print(newm.heap);
  print(newm.remove());
  print(newm.heap);
  print(newm.heapSort());
}
