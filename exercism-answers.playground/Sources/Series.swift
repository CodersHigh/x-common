import Foundation

class Series {
    var series : String
    
    init(_ input: String) {
        self.series = input
    }
    
    func slices(_ num: Int) -> [[Int]]{
        var result = [[Int]]()
        if series.characters.count < num {
            return result
        }
        
        var start = 0
        var end = num - 1
        
        while end != series.characters.count {
            var subArr = [Int]()
            for n in start...end {
                subArr.append( Int(String(series[series.index(series.startIndex, offsetBy: n)]))!)
            }
            result.append(subArr)
            start += 1
            end += 1
        }
        
        return result
    }
}
