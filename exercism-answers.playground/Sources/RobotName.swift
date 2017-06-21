import Foundation

class Robot {
    
    var name = ""
    
    init() {
        resetName()
    }
    
    func resetName() {
        
        var newName = ""
        repeat {
            // Get two random letters
            let scalarOffset = 65
            let numberOfLetters = 26
            for _ in 0..<2 {
                newName += "\(UnicodeScalar(scalarOffset + Int(arc4random_uniform(UInt32(numberOfLetters))))!)"
            }
            
            // Get 3 random numbers
            for _ in 0..<3 {
                newName += "\(arc4random_uniform(10))"
            }
        } while newName == name
        
        name = newName
    }
}
