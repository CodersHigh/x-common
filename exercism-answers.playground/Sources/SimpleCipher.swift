import Foundation

class Cipher{
    
    var key = "aaaaaaaaaa"
    
    func encode(_ plaintext: String) -> String{
        return (process(plaintext, true))
    }
    
    func decode(_ plaintext: String) -> String{
        return (process(plaintext, false))
    }
    
    func process (_ plaintext: String, _ encoding: Bool) -> String {
        let zipped = zip(key.characters,plaintext.characters)
        var output = String()
        
        for (v1,v2) in zipped {
            let A = String(v1).unicodeScalars
            let B = String(v2).unicodeScalars
            let bvalue = B.map { $0.value }
            let mapA: [UInt32]
            let bval = (bvalue.first! - 97)
            if encoding{
                mapA = A.map { $0.value + bval }
            }
            else
            {
                mapA = A.map { $0.value - bval }
            }
            let testb = Int (mapA.first!)
            let test =  ( ( abs ( testb - 97 ) % 26 ) + 97 )
            let ucsoutput = UnicodeScalar(test)
            output.append(Character(ucsoutput!))
        }
        return output
    }
    
    
    
    convenience init?(key: String? = nil) {
        self.init()
        if (key?.lowercased() != key) {return nil}
        if (key?.rangeOfCharacter(from: CharacterSet.letters) ) == nil { return nil }
        if (key == nil)
        {
            self.key = "aaaaaaaaa"
        }
        else
        {
            self.key = key!
        }
    }
}
