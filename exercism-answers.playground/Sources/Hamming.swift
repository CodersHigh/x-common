import Foundation

class Hamming {
    class func compute (_ inputStr: String, against: String) -> Int? {
        
        var diff: Int? = 0
        
        if (inputStr.characters.count != against.characters.count) {
            return nil
        }
        
        let str1 = inputStr.trimmingCharacters(in: .whitespacesAndNewlines)
        let str2 = against.trimmingCharacters(in: .whitespacesAndNewlines)
        
        for (index, value) in str1.characters.enumerated() {
            if (value != str2[str2.index(str2.startIndex, offsetBy: index)]) {
                diff! += 1
            }
        }
        
        return diff!
    }
    
}
