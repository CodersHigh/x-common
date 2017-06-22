import Foundation

class Atbash {
    class func encode(text: String) -> String {
        let alphaArray = Array("abcdefghijklmnopqrstuvwxyz".characters)
        let numArray = Array("0123456789".characters)
        
        var codedArray: [Character] = []
        
        for char in text.lowercased().characters {
            
            if alphaArray.contains(char) {
                codedArray.append(alphaArray[25 - alphaArray.index(of: char)!])
            } else if numArray.contains(char) {
                codedArray.append(char)
            }
        }
        
        var codedSpacedArray: [Character] = []
        
        for (i, e) in codedArray.enumerated() {
            
            codedSpacedArray.append(e)
            
            if (i + 1) % 5 == 0 && (i + 1) < codedArray.count {
                
                codedSpacedArray.append(" ")
            }
        }
        
        return String(codedSpacedArray)
    }
}

// 문자열 다루기
