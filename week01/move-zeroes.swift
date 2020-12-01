//leet code 238
class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var j = 0
        for i in 0..<nums.count {
            if nums[i] != 0 {
                if nums[i] != nums[j] {
                    nums.swapAt(j, i)
                }
                j+=1
            }
        }
    }
}

var array : [Int] = [0,1,0,3,12]
print("\(array)")
let solution = Solution()
solution.moveZeroes(&array)
print("\(array)")
