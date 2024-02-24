void main() {
  List<int> arr = [-12, 4, 3, 20, -1];
  List<int> result = bubbleSort(arr);
  print(result);
}

bubbleSort(List<int> arr) {
  bool swapped;
  do {
    swapped = false;
    for (int i = 0; i < arr.length - 1; i++) {
      if (arr[i] > arr[i + 1]) {
        int temp = arr[i];
        arr[i] = arr[i + 1];
        arr[i + 1] = temp;
        swapped = true;
      }
    }
  } while (swapped == true);
  return arr;
}
