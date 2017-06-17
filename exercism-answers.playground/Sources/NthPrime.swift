import Foundation

class Prime {
    static var primes : [Int] = [2]
    
    static func nth(_ num: Int) -> Int?{
        if (num == 0) { return nil }
        for number in 3 ... 1000000
        {
            if (number % 2 == 1)
            {
                let f = primes.filter { ($0) <= (number / 2) }
                var isprime = true
                for exisitingprime in f {
                    if ( (number % exisitingprime) == 0) { isprime = false }
                }
                if isprime {primes.append(number)}
            }
        }
        
        return primes[num - 1]
    }
}
