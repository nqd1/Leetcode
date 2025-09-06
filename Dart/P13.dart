import 'dart:io';

class Solution {
  int romanToInt(String s) {
    int result = 0;

    for (int i = 0; i < s.length; i++) {
      String a = s.substring(i, i + 1);
      String b = (i + 1 < s.length) ? s.substring(i + 1, i + 2) : "0";

      if (i + 1 < s.length && val(a) < val(b)) {
        result -= val(a);
      } else {
        result += val(a);
      }
    }
    return result;
  }

  int val(String c) {
    switch (c) {
      case "I":
        return 1;
      case "V":
        return 5;
      case "X":
        return 10;
      case "L":
        return 50;
      case "C":
        return 100;
      case "D":
        return 500;
      case "M":
        return 1000;
    }
    return 0;
  }
}

void main() {
  Solution sol = Solution();
  String? input = stdin.readLineSync();

  stdout.write(sol.romanToInt(input!));
}
