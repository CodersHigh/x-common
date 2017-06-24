class Squares {
    var num:Int
    
    var sumOfSquares:Int {
        get {
            var sum = 0
            for i in 1...num {
                sum += i*i
            }
            
            return sum
        }
    }
    
    var squareOfSums:Int {
        get {
            var sum = 0
            for i in 1...num {
                sum += i
            }
            
            return sum*sum
        }
    }
    
    var differenceOfSquares:Int {
        get {
            return self.squareOfSums - self.sumOfSquares
        }
    }
    
    init(_ num:Int)
    {
        self.num = num
    }
}

// 연산자 이용하여 연산하기
