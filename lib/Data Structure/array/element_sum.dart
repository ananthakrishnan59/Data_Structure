void result(List<int> arr, int t) {
  for (int i = 0; i < arr.length - 1; i++) {
    for (int j = i + 1; j < arr.length; j++) {
      if (arr[i] + arr[j] == t) {
        print("result is ${arr[i]},${arr[j]}");
      }
    }
  }
}

void main() {
  List<int> arr = [6, 5, 4, 3, 9, 8, 0];
  int t = 10;
  result(arr, t);
}
