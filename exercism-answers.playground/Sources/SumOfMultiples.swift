import Foundation

class SumOfMultiples {
    class func toLimit (_ top: Int, inMultiples: Set<Int>) -> Int {
        var array: [Int] = []
        for y in inMultiples {
            if y != 0 {
                array += (0..<top).filter{ $0 % y == 0 }
            }
        }
        return Set(array).reduce(0, +)
    }
}
