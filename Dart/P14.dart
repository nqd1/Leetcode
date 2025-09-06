class Solution {
  String longestCommonPrefix(List<String> strs) {
    if (strs.isEmpty) return "";

    String first = strs.first;
    while (first.length > 0) {
      bool matched = true;

      for (String s in strs) {
        if (!s.startsWith(first)) {
          first = first.substring(0, first.length - 1);
          matched = false;
          break;
        }
      }

      if (matched) return first;
    }

    return "";
  }
}

void main() {
  List<String> strs = ["Flower", "Flow", "Flight", "Fl"];
  Solution sol = Solution();
  print(sol.longestCommonPrefix(strs));

  strs = ["dog", "racecar", "car"];
  print(sol.longestCommonPrefix(strs));
}
