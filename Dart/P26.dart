class Solution {
  int removeDuplicates(List<int> nums) {
    Set<int> uniqueNums = {};
    for (int num in nums) {
      uniqueNums.add(num);
    }
    nums
      ..clear()
      ..addAll(uniqueNums);
    return uniqueNums.length;
  }
}

void main() {
  List<int> nums = [1, 1, 2, 3, 3, 4, 5, 5, 9, 9, 10, 20];
  Solution sol = Solution();
  int length = sol.removeDuplicates(nums);
  print('Length of array after removing duplicates: $length');
  print('Nums array after trimming: ${nums}');
}
