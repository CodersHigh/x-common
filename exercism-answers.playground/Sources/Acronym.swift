import Foundation

class Acronym {
    
    class func abbreviate(_ text: String) -> String {
        let result = text
            .components(separatedBy: CharacterSet.alphanumerics.inverted)
            .filter{!$0.isEmpty}
            .map{String($0.characters.prefix(1))}
            .joined(separator: "")
            .uppercased()
        
        return result
    }
}

// 문자열 다루기
