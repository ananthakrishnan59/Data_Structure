void main(List<String> args) {
  List<int> reslut = selectionSort([-2, 4, 6, 3, -12]);
  print(reslut);
}

selectionSort(List<int> arr) {
  for (int i = 0; i < arr.length - 1; i++) {
    for (int j = i + 1; j < arr.length; j++) {
      if (arr[i] > arr[j]) {
        int temp = arr[i];
        arr[i] = arr[j];
        arr[j] = temp;
      }
    }
  }
  return arr;
}


