import Foundation

struct Sieve {
    let primes: [Int]
    
    init(_ limit: Int) {
        var primes = [2]
        var composite = Set<Int>()
        
        for n in 3...limit where n % 2 != 0 {
            if !composite.contains(n) {
                primes.append(n)
                
                var factor = n + n
                while factor <= limit {
                    composite.insert(factor)
                    factor += n
                }
            }
        }
        
        self.primes = primes
    }
}
