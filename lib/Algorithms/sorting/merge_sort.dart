void main(List<String> args) {
  List<int> result = mergeSort([-2, 4, 6, -5, 4]);
  print(result);
}

mergeSort(List<int> arr) {
  if (arr.length < 2) {
    return arr;
  }
  int mid = (arr.length / 2).floor();
  List<int> leftarr = arr.sublist(0, mid);
  List<int> rightarr = arr.sublist(mid);
  return merge(mergeSort(leftarr), mergeSort(rightarr));
}

merge(List<int> leftarr, List<int> rightarr) {
  List<int> sortedArr = [];
  while (leftarr.isNotEmpty && rightarr.isNotEmpty) {
    if (leftarr[0] <= rightarr[0]) {
      sortedArr.add(leftarr.removeAt(0));
    } else {
      sortedArr.add(rightarr.removeAt(0));
    }
  }
  return [...sortedArr, ...leftarr, ...rightarr];
}
