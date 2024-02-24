// 


int factorial(int n, [int result = 1]) {
  if (n == 0 || n == 1) {
    return result;
  } else {
    // Tail recursive call: recursive call is the last operation
    return factorial(n - 1, result * n);
  }
}

void main() {
  int n = 5;
  int result = factorial(n);
  print('Factorial of $n is $result');
}