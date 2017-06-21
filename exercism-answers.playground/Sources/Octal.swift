import Foundation

class Octal {
    
    var value:String;
    
    init (_ number:String) {
        self.value = number
    }
}

extension Int {
    init (_ i:Octal) {
        self = Int(i.value, radix: 8) ?? 0;
    }
}
