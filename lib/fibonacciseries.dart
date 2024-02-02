import 'dart:io';

void main() {
  print("Enter the number of terms for Fibonacci series:");
  String userInput = stdin.readLineSync()!;
  int n = int.parse(userInput);

  print("Fibonacci Series up to $n terms:");
  for (int i = 0; i < n; i++) {
    print("${fibonacci(i)}");
  }
}

int fibonacci(int n) {
  if (n <= 1) {
    return n;
  }
  return fibonacci(n - 1) + fibonacci(n - 2);
}
