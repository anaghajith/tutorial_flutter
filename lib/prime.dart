import 'dart:io';

void main() {
  stdout.write("Enter a number: ");
  String input=stdin.readLineSync()??"";
  int? number = int.tryParse(input);
  if (isPrime(number!)) {
    print("$number is a prime number.");
  } else {
    print("$number is not a prime number.");
  }
}

bool isPrime(int num) {
  if (num <= 1) return false;
  for (int i = 2; i * i <= num; i++) {
    if (num % i == 0) {
      return false;
    }
  }
  return true;
}