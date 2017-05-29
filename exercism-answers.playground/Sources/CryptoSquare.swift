import Foundation

class Crypto {
    var text: String
    
    init(_ text: String){
        self.text = text
    }
    
    // MARK: normalizePlaintext
    var normalizePlaintext: String {
        let characters = text.lowercased().characters
            .map {String($0)}
            .filter {
                if let char = $0.unicodeScalars.first {
                    return CharacterSet.alphanumerics.contains(char)
                }
                return false
        }
        print("\(characters.joined(separator: ""))")
        return characters.joined(separator: "")
    }
    
    // MARK: size
    var size: Int {
        var x = 0
        while (x*x < normalizePlaintext.characters.count){
            x+=1
        }
        return x
    }
    
    // MARK: plaintextSegments
    var plaintextSegments: [String] {
        let myString = normalizePlaintext
        var segments = [String]()
        
        let last = myString.characters.count % size
        
        var startIndex = (last != 0 ? myString.index(myString.endIndex, offsetBy: -last) : myString.index(myString.endIndex, offsetBy: -size))
        var endIndex = myString.endIndex

        var section = myString.substring(from: startIndex)
        
        segments.append(section)
        
        while (startIndex > myString.startIndex){
            
            startIndex = myString.index(startIndex, offsetBy: -size)
            endIndex = myString.index(startIndex, offsetBy: size)
            section = myString.substring(with: startIndex..<endIndex)
            
            segments.append(section)
        }
        print(segments)
        return segments.reversed()
    }
    
    
    // MARK: ciphertext
    var ciphertext: String {
        var cipher = ""
        var index = 0
        while (index < size){
            for segment in plaintextSegments {
                var itemAtIndex: Character?
                if (index < segment.characters.count) {
                    itemAtIndex = segment[segment.index(segment.startIndex, offsetBy: index)]
                    
                    cipher.append(itemAtIndex!)
                }
            }
            index += 1
        }
        return cipher
    }
    
    // MARK: normalizeCiphertext
    var normalizeCiphertext: String {
        var ct = ciphertext
        var normalizeCT = ""
        while (ct.characters.count > 0){
            if (normalizeCT.characters.count % size != 0){
                normalizeCT.append(ct.remove(at: ct.startIndex))
            } else {
                normalizeCT.append(" " as Character)
            }
        }
        
        return normalizeCT.trimmingCharacters(in: CharacterSet.whitespaces)
    }
}
