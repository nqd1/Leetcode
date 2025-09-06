
class Solution {
  bool isValid(String s) {
    if (s.isEmpty) return true;

    String stack = "";
    for (int i = 0; i < s.length; i++) {
      String c = s[i];
      if (c == '(' || c == '{' || c == '[') {
        stack += c;
      } else {
        if (stack.isEmpty) return false;
        String top = stack[stack.length - 1];
        if ((c == ')' && top != '(') ||
            (c == '}' && top != '{') ||
            (c == ']' && top != '[')) {
          return false;
        }
        stack = stack.substring(0, stack.length - 1);
      }
    }
    return stack.isEmpty;
  }
}

void main() {
  List<String> tests = [
    "()",
    "()[]{}",
    "(]",
    "([)]",
    "{[]}",
    "",
    "((()))",
    "((())",
    "())",
    "([{}])",
    "[(])"
  ];
  Solution sol = Solution();
  for (String test in tests) {
    print('isValid("$test") = ${sol.isValid(test)}');
  }
}