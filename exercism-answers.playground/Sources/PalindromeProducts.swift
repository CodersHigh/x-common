struct Result {
    var value: Int = 0
    var factor = [Int]()
}

class PalindromeProducts {
    
    var factors = [Int]()
    var smallest = Result()
    var largest = Result()
    
    init(maxFactor: Int, minFactor: Int = 1) {
        
        func isPalindrome (_ input: Int) -> Bool
        {
            var str = String(input)
            return ( String(str.characters.reversed()) == str )
            
        }
        
        var palindromicproducts = [Int]()
        smallest.value = maxFactor * maxFactor
        largest.value = minFactor
        
        for number1 in minFactor...maxFactor
        {
            for number2 in number1...maxFactor // since ab == ba
            {
                let product = (number1 * number2)
                if ( isPalindrome(product) )
                {
                    palindromicproducts.insert (product, at: 0)
                    
                    if (product) < smallest.value
                    {
                        smallest.value = product
                        smallest.factor = [number1,number2]
                        break
                    }
                    else
                    {
                        if (product) > largest.value
                        {
                            largest.value = product
                            largest.factor = [number1,number2]
                            break
                        }
                    }
                }
            }
        }
    }
}
