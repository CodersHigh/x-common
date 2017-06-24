enum BinarySearchError: Error {
    case unsorted
}

class BinarySearch {
    
    let list : [Int]
    
    var middle: Int {
        get {
            return list.count / 2
        }
    }
    
    func searchFor(_ target: Int) -> Int!{
        var lowerBound = 0
        var upperBound = list.count
        let notfound = true
        while notfound {
            if upperBound < lowerBound {
                return nil
            }
            let midPoint = lowerBound + (upperBound - lowerBound ) / 2
            if list[midPoint] < target {
                lowerBound = midPoint + 1
            }
            if list[midPoint] > target {
                upperBound = midPoint - 1
            }
            if list [midPoint] == target {
                return midPoint
            }
        }
    }
    
    init(_ array: [Int]) throws {
        if array != array.sorted() {
            throw BinarySearchError.unsorted
        }
        
        list = array
    }
}

// 배열과 반복문
