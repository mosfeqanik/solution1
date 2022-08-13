class Solution {
  List<int> twoSum(List<int> nums, int target) {
   

  var map = {};
  List<int> result = [];

  for (int number in nums) {
    if (map.containsKey(number)) {
      result.add(map[number]);
      result.add(nums.indexOf(number));
    } else {
      map[target - number] = nums.indexOf(number);
    }
  }

  return result;
  }
}
