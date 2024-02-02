import 'dart:io';

void main() {
  print("Enter a number:");
  int number = int.parse(stdin.readLineSync()!);

  int reversed = 0, remainder, originalNumber = number;

  while (number > 0) {
    remainder = number % 10;
    reversed = reversed * 10 + remainder;
    number ~/= 10;
  }

  if (originalNumber == reversed) {
    print("$originalNumber is a palindrome.");
  } else {
    print("$originalNumber is not a palindrome.");
  }
}
