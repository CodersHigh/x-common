import Foundation

class Allergies {
    static let eggs = Allergies(1)
    static let peanuts = Allergies(2)
    static let shellfish = Allergies(4)
    static let strawberries = Allergies(8)
    static let tomatoes = Allergies(16)
    static let chocolate = Allergies(32)
    static let pollen = Allergies(64)
    static let cats = Allergies(128)
    
    let code: Int
    
    init(_ code: Int) {
        self.code = code
    }
    
    func hasAllergy(allergy: Allergies) -> Bool {
        return (allergy.code & code) > 0
    }
}

// 연산자를 이용한 연산
