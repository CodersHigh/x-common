class Dominoes {
    
    var sortedDominoes = [(Int, Int)]()
    var chained: Bool = false
    
    init(_ dominoes: [(Int, Int)]) {
        for domino in dominoes {
            let orderDomino = (domino.0<=domino.1 ? domino : (domino.1, domino.0))
            sortedDominoes.append(orderDomino)
            sortedDominoes.sort(by: <)
            chained = ischained()
        }
    }
    
    func ischained() -> Bool {
        guard sortedDominoes.count > 0 else {
            return false
        }
        
        var set = Set<Int>()
        var dict = Dictionary<Int,Int>()
        set.insert(sortedDominoes.first!.0)
        for domino in sortedDominoes {
            guard set.contains(domino.0) else {
                return false
            }
            set.insert(domino.1)
            var newCount = (dict[domino.0]==nil ? 1 : dict[domino.0]!+1)
            dict.updateValue(newCount, forKey: domino.0)
            newCount = (dict[domino.1]==nil ? 1 : dict[domino.1]!+1)
            dict.updateValue(newCount, forKey: domino.1)
        }
        for count in dict {
            guard count.value%2 == 0 else {
                return false
            }
        }
        return true
    }
}

// dictionary, tuple 이용하기. dictionary 의 탐색.
