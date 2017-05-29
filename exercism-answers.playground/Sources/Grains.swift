import Foundation

class Grains {
    
    static var total:UInt64 = UInt64.max
    
    class func square(_ n:Int) throws-> UInt64 {
        var result:UInt64 = 1
        if n==1 {
            return 1
        }
        if n<1  {
            throw GrainsError.inputTooLow("Input[\(n)] invalid. Input should be between 1 and 64 (inclusive)")
        }
        if n>64  {
            throw GrainsError.inputTooHigh("Input[\(n)] invalid. Input should be between 1 and 64 (inclusive)")
        }
        for _ in 1...n-1 {
            result = result*2
        }
        
        return result
    }
}

enum GrainsError : Error {
    case inputTooLow(String)
    case inputTooHigh(String)
}
