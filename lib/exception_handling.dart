void main() {
  try {
    int result = divide(20, 0);
    print('$result');
  } catch (e) {
    print('$e');
  } finally {
    print('Finished');
  }
}

int divide(int a, int b) {
  if (b == 0) {
    throw Exception('Cannot divide by zero.');
  }
  return a ~/ b;
}
