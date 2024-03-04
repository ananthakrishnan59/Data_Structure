// class MaxHeap {
//   List<int> heap = [];

//   int getParentIndex(int index) {
//     return ((index - 1) ~/ 2).floor();
//   }

//   int getLeftChildIndex(int index) {
//     return 2 * index + 1;
//   }

//   int getRightChildIndex(int index) {
//     return 2 * index + 2;
//   }

//   void swap(int index1, int index2) {
//     int temp = heap[index1];
//     heap[index1] = heap[index2];
//     heap[index2] = temp;
//   }

//   void heapifyUp(int index) {
//     int parentIndex = getParentIndex(index);
//     if (parentIndex >= 0 && heap[parentIndex] < heap[index]) {
//       swap(index, parentIndex);
//       heapifyUp(parentIndex);
//     }
//   }

//   void heapifyDown(int index) {
//     int leftChildIndex = getLeftChildIndex(index);
//     int rightChildIndex = getRightChildIndex(index);
//     int maxIndex = index;
//     if (leftChildIndex < heap.length && heap[leftChildIndex] > heap[maxIndex]) {
//       maxIndex = leftChildIndex;
//     }
//     if (rightChildIndex < heap.length && heap[rightChildIndex] > heap[maxIndex]) {
//       maxIndex = rightChildIndex;
//     }
//     if (maxIndex != index) {
//       swap(index, maxIndex);
//       heapifyDown(maxIndex);
//     }
//   }

//   void insert(int value) {
//     heap.add(value);
//     heapifyUp(heap.length - 1);
//   }

//   int? remove() {
//     if (heap.isEmpty) {
//       return null;
//     }

//     if (heap.length == 1) {
//       return heap.removeLast();
//     }

//     int max = heap[0];
//     heap[0] = heap.removeLast();
//     heapifyDown(0);
//     return max;
//   }

//   List<int> heapSort() {
//     List<int> sortedArray = [];
//     while (heap.isNotEmpty) {
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
//   MaxHeap maxHeap = MaxHeap();
//   maxHeap.buildHeapFromArray([3, 7, 2, 1, 9, 8]);

//   print(maxHeap.heap); // [9, 7, 8, 1, 3, 2

//   print(maxHeap.remove()); // 9

//   print(maxHeap.heap); // [8, 7, 2, 1, 3]

//   print(maxHeap.heapSort()); // [1, 2, 3, 7, 8]
// }



class Maxheap {
  List<int> heap = [];

  int getParentIndex(int index) {
    return ((index - 1) ~/ 2).floor();
  }

  int getLeftChildIndex(int index) {
    return 2 * index + 1;
  }

  int getRightChildIndex(int index) {
    return 2 * index + 2;
  }

  void swap(int index1, int index2) {
    int temp = heap[index1];
    heap[index1] = heap[index2];
    heap[index2] = temp;
  }

  void heapifyUp(int index) {
    int parentIndex = getParentIndex(index);
    if (parentIndex >= 0 && heap[parentIndex] < heap[index]) {
      swap(index, parentIndex);
      heapifyUp(parentIndex);
    }
  }

  void heapifyDown(int index) {
    int leftChildIndex = getLeftChildIndex(index);
    int rightChildIndex = getRightChildIndex(index);
    int maxIndex = index;
    if (leftChildIndex < heap.length && heap[leftChildIndex] > heap[maxIndex]) {
      maxIndex = leftChildIndex;
    }
    if (rightChildIndex < heap.length &&
        heap[rightChildIndex] > heap[maxIndex]) {
      maxIndex = rightChildIndex;
    }
    if (maxIndex != index) {
      swap(index, maxIndex);
      heapifyDown(maxIndex);
    }
  }

  void insert(int value) {
    heap.add(value);
    heapifyUp(heap.length - 1);
  }

  int? remove() {
    if (heap.isEmpty) {
      return null;
    }
    if (heap.length == 1) {
      return heap.removeLast();
    }

    int max = heap[0];
    heap[0] = heap.removeLast();
    heapifyDown(0);
    return max;
  }

  List<int> heapSort() {
    List<int> sortedArray = [];
    while (heap.isNotEmpty) {
      sortedArray.add(remove()!);
    }
    return sortedArray;
  }

  void buildheapFromArray(List<int> array) {
    heap = List.from(array);
    int firstNonFeatherINdex = ((array.length - 2) / 2).floor();
    for (int i = firstNonFeatherINdex; i >= 0; i--) {
      heapifyDown(i);
    }
  }
}

void main() {
  Maxheap myheap = Maxheap();
  myheap.buildheapFromArray([3, 7, 2, 1, 9, 8]);
  print(myheap.heap);
  print(myheap.remove());
  print(myheap.heap);
  print(myheap.heapSort());
}
