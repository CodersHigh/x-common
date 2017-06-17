import Foundation

class PhoneNumber: CustomStringConvertible {
    
    var description: String {
        return toString()
    }
    
    var digits: [Character]
    
    init (_ from: String) {
        let numbers = "0123456789"
        digits = from.characters.filter({  numbers.contains(String($0))} )
        
        if (digits.count == 11) && (digits[0] == "1") {
            digits.remove(at: 0)
        } else if (digits.count != 10) {
            digits = [Character](repeating: "0", count:10)
        }
    }
    
    var number: String {
        get {
            return String(digits)
        }
    }
    
    var areaCode: String {
        get {
            return String(digits[0..<3])
        }
    }
    
    func toString() -> String {
        let areaCode = self.areaCode
        let prefix = String(digits[3..<6])
        let lineNum = String(digits[6..<10])
        
        return "(\(areaCode)) \(prefix)-\(lineNum)"
    }
    
}
