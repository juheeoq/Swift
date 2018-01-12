import UIKit

// 1. warmup test

func add(_ i: Int, _ j: Int) -> Int {
    
    return i+j
}

let result1 = add(1, 2)
assert(3 == result1, "1 + 2 should be 3, but \(result1)")

let result2 = add(3, 4)
assert(7 == result2, "3 + 4 should be 7, but \(result2)" )

print("Well Done")



