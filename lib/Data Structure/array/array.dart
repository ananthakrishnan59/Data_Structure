void main() {
  List<int> sortedArray = sortArray([1, 5, 4, 7, 6]);
  List<int> reversedArray = reverseArray([3, 6, 4, 8, 9]);

  print('sortedlist : $sortedArray');
  print("reversedlist: $reversedArray");
}

List<int> sortArray(List<int> arr) {
  for (int i = 0; i < arr.length - 1; i++) {
    for (int j = 0; j < arr.length - i - 1; j++) {
      if (arr[j] > arr[j + 1]) {
        int temp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = temp;
      }
    }
  }
  return arr;
}

List<int> reverseArray(List<int> arr) {
  int first = 0;
  int last = arr.length - 1;
  while (first <= last) {
    int temp = arr[first];
    arr[first] = arr[last];
    arr[last] = temp;
    first++;
    last--;
  }
  return arr;
}
