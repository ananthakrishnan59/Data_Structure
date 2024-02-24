List<int> findelementSum(List<int> num, int t) {
  Set<int> nums = {};
  for (int i = 0; i < num.length; i++) {
    int number = num[i];
    int match = t - number;
    if (num.contains(match)) {
      return [number, match];
    } else {
      nums.add(match);
    }
  }
  return [];
}

void main(List<String> args) {
  List<int> result = findelementSum([6, 5, 4, 3, 9, 8, 0], 10);
  print(result);
}
