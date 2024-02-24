void main(List<String> args) {
  List<int> result = inserionSort([2, 1, 4, 5, 12, 8]);
  print(result);
}

inserionSort(List<int> arr) {
  for (int i = 1; i < arr.length; i++) {
    int numbertoInsert = arr[i];
    int j = i - 1;
    while (j >= 0 && arr[j] > numbertoInsert) {
      arr[j + 1] = arr[j];
      j--;
    }
    arr[j + 1] = numbertoInsert;
  }
  return arr;
}
