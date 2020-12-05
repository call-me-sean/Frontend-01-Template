//f(n) = f(n-1) + f(n-2) f(2) = 2 f(1) = 1
//leet code 70
//class Solution {
//    func climbStairs(_ n: Int) -> Int {
//        if (n <= 0) { return 1 }
//        if (n <= 2) { return n }
//        return climbStairs(n - 2) + climbStairs(n - 1)
//    }
//}
//let staires = 3
//print("staires:\(staires)")
//let solution = Solution()
//let result = solution.climbStairs(staires)
//print("result :\(result)")

//class Solution {
//    var cacheDic : Dictionary<Int, Int> = [:]
//    func climbStairs(_ n: Int) -> Int {
//        if (n <= 0) { return 1 }
//        if (n <= 2) { return n }
//        return getValue(n - 2) + getValue(n - 1)
//    }
//
//    func hasKey(_ key: Int) -> Bool {
//        return cacheDic.keys.contains(key) ? true : false
//    }
//
//    func getValue(_ key: Int) -> Int {
//        if !hasKey(key) {
//            cacheDic.updateValue(climbStairs(key), forKey: key)
//        }
//        return cacheDic[key] ?? -1
//    }
//}
//let staires = 3
//print("staires:\(staires)")
//let solution = Solution()
//let result = solution.climbStairs(staires)
//print("result :\(result)")

class Solution {
    func climbStairs(_ n: Int) -> Int {
        if (n <= 0) { return 1 }
        if (n <= 2) { return n }
        var one_step_before = 2
        var two_steps_before = 1
        var all_ways = 0
        for _ in 3...n {
            all_ways = one_step_before + two_steps_before
            two_steps_before = one_step_before
            one_step_before = all_ways
        }
        return all_ways
    }
}
let staires = 13
print("staires:\(staires)")
let solution = Solution()
let result = solution.climbStairs(staires)
print("result :\(result)")
