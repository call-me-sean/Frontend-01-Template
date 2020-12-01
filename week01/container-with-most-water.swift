//leet code 11
//2.横坐标（下标）相减最大 纵坐标取最小值 算矩形最大面积 - 左右夹逼 取最大值
class Solution {
    func maxArea(_ height: [Int]) -> Int {
        var maxArea = 0
        var i:Int = 0
        var j:Int = height.count - 1
        while i < j {
            maxArea = max(maxArea, min(height[i], height[j]) * (j - i))
            height[i] < height[j] ? (i += 1) : (j -= 1)
        }
        return maxArea
    }
}
var array : [Int] = [1,8,6,2,5,4,8,3,7]
print("\(array)")
let solution = Solution()
let maxArea = solution.maxArea(array)
print("\(maxArea)")
