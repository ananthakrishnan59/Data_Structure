
// -------------- Binary Search --------------


int binarySearch(List<int> sortedList, int target) {
  int left = 0;
  int right = sortedList.length - 1;

  while (left <= right) {
    int mid = (left + right) ~/ 2; 
    if (sortedList[mid] == target) {
      return mid; 
    } else if (sortedList[mid] < target) {
      left = mid + 1; 
    } else  {
      right = mid - 1;
    }
  }

  return -1; 
}

void main() {
  
  List<int> sortedList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  int target = 7;

  int result = binarySearch(sortedList, target);

  if (result == -1) {
    print('Target $target not found in the list.');
  } else {
    print('Target $target found at index $result.');
  }
}
