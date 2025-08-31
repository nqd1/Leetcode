import 'dart:io';

class Solution {
  bool isPalindrome(int x) {
    return x.toString().split('').reversed.join() == x.toString();
  }
}

void main() {
  stdout.write("Input number: ");
  String? input = stdin.readLineSync();
  int number = int.parse(input!);

  Solution sol = Solution();

  stdout.write(sol.isPalindrome(number));
}
