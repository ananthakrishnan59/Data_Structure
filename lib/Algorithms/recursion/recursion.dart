// find the sum of n numbers

int sumodfNumbers(int n) {
  if (n == 1) {
    return 1;
  } else {
    return n + sumodfNumbers(n - 1);
  }
}

// find the factorial of the number

int factorialofNumber(int n) {
  if (n == 1) {
    return 1;
  } else {
    return n * factorialofNumber(n - 1);
  }
}

//binarcy search in recursion

int binarySearch(int start, int end, int target, List<int> array) {
  if (start > end) {
    return -1;
  }
  int middle = (start + end) ~/ 2;
  if (array[middle] == target) {
    return middle;
  } else if (target > array[middle]) {
    return binarySearch(middle + 1, end, target, array);
  } else {
    return binarySearch(start, middle - 1, target, array);
  }
}

 void main() {
  // print(sumodfNumbers(5));
  // print(factorialofNumber(5));
   List<int> sortedarray = [1, 2, 3, 4, 5, 6, 8, 12];
  
   int start = 0;
  int end = sortedarray.length - 1;
  int result = binarySearch(start, end, 2, sortedarray);
  if (result == -1) {
    print('the list is empty');
  } else {
    print(result);
  }
}
