import Cocoa

enum Plants: String {
    case radishes = "radishes"
    case clover = "clover"
    case grass = "grass"
    case violets = "violets"
}

struct Garden
{
    var childrenarray = ["Alice", "Bob","Charlie", "David", "Eve", "Fred", "Ginny", "Harriet", "Ileana", "Joseph", "Kincaid", "Larry"]
    
    var plantsdict : [Character: Plants] = ["R":Plants.radishes, "C":Plants.clover, "G":Plants.grass, "V":Plants.violets]
    
    var gardenString = String()
    
    var gardenArray = [String]()
    
    func plantsForChild(_ child: String) -> [Plants]{
        var outputArray : [Plants] = []
        for (index,_) in gardenArray.enumerated(){
            var child = childrenarray.index(of: child) ?? 0 //Can't find the child, assume the first (actully should error)
            let startIndex = gardenArray[index].startIndex
            let endIndex = gardenArray[index].endIndex
            if child != 0 {child = child * 2}
            let indexfirstflower = gardenArray[index].index(startIndex, offsetBy: child, limitedBy: endIndex)
            let indexsecondflower = gardenArray[index].index(startIndex, offsetBy: child + 1, limitedBy: endIndex)
            outputArray.append(plantsdict[gardenArray[index][indexfirstflower!]] ?? Plants.grass)
            outputArray.append(plantsdict[gardenArray[index][indexsecondflower!]] ?? Plants.grass)
        }
        return outputArray
    }
    
    init(_ inputstring : String, children: [String]! = nil) {
        
        if (children != nil) {
            childrenarray.removeAll()
            childrenarray.append(contentsOf: children)
            childrenarray.sort {$0 < $1}
        }
        gardenArray = inputstring.components(separatedBy: CharacterSet.newlines)
    }
}

// array, 문자열 다루기. 정렬하기. array 검색하기.
