class Solution {
  List<int> twoSum(List<int> nums, int target) {
    Map<int, int> num_map = {};
    for (int i = 0; i < nums.length; i++){
        int j = target - nums[i];
        if (num_map.containsKey(j)){
            return [num_map[j]!, i];
        } else {
            num_map[nums[i]] = i;
        }
    }
    return [];
  }
}

void main() {
  Solution solution = Solution();
  List<int> nums = [2, 7, 11, 15];
  int target = 9;
  List<int> result = solution.twoSum(nums, target);
  print(result); // Output: [0, 1]
}