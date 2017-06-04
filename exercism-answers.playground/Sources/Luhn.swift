class Luhn{
    
    var numbers : [Int] = []
    var addends : [Int] = []
    var checksum : Int
    var isValid : Bool
    
    init(_ cardNumber : Int) {
        for i in String(cardNumber).characters{
            numbers.insert(Int(String(i))!,at : 0)
        }
        for i in 0..<numbers.count{
            addends.insert(i % 2 == 0 ? numbers[i] : numbers[i] * 2 > 9 ? numbers[i] * 2 - 9 : numbers[i] * 2, at: 0)
        }
        self.checksum = addends.reduce(0, {$0 + $1})
        self.isValid = checksum % 10 == 0
    }
    
    class func create(_ n : Int) -> Int{
        let a = Luhn(n * 10)
        let b = (10 - a.checksum % 10) % 10
        return n * 10 + b
    }
}
