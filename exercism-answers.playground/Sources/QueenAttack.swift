import Foundation

class Queens {
    
    var white: [Int]
    var black: [Int]
    
    var board : String = ""
    
    public var description : String{ return self.board }
    
    var canAttack: Bool {
        let isDiagonal = abs(white[0] - black[0]) == abs(white[1] - black[1])
        let isHorizontal = white[0] == black [0]
        let isVertical = white [1] == black [1]
        
        if (isHorizontal || isVertical || isDiagonal) {
            return true
        }
        return false
    }
    
    init () {
        white = [0, 3]
        black = [7, 3]
    }
    
    convenience init (white: [Int], black: [Int]) throws {
        self.init()
        let hasInvalidCoordinates = (white.filter{$0 < 0 || $0 > 7}.count > 0) || (black.filter{$0 < 0 || $0 > 7}.count > 0)
        
        if (white.count > 2 || black.count > 2) {
            throw InitError.incorrectNumberOfCoordinates
        } else if (hasInvalidCoordinates) {
            throw InitError.invalidCoordinates
        } else if (white == black) {
            throw InitError.sameSpace
        }
        
        self.white = white
        self.black = black
        buildBoard()
    }
    
    func buildBoard(){
        var matrix = Array(repeating: Array(repeating: "_", count: 8), count: 8 )
        matrix[self.white[1]][self.white[0]] = "W"
        matrix[self.black[1]][self.black[0]] = "B"
        for row in 0...7{
            for column in 0...7{
                self.board += matrix[column][row]
                if(column != 7){self.board += " "}
            }
            if row != 7 {self.board += "\n"}
        }
    }
}

enum InitError : Error {
    case incorrectNumberOfCoordinates, invalidCoordinates, sameSpace
}
