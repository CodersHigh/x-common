import Foundation

class Board {
    var transformed: [String] {
        get {
            var result: [String] = []
            
            for i in 0..<rows.count {
                
                let chars = rows[i]
                var newRow: [String] = []
                
                for j in 0..<chars.count {
                    
                    let char = chars[j]
                    
                    if char != " " {
                        newRow.append(char)
                    } else {
                        var count = 0
                        let neighbors = [[i - 1, j - 1], [i - 1, j], [i - 1, j + 1], [i, j - 1], [i, j + 1], [i + 1, j - 1], [i + 1, j], [i + 1, j + 1]]
                        
                        for neighbor in neighbors {
                            let i1 = neighbor[0], j1 = neighbor[1]
                            if 0 <= i1 && i1 < rows.count && 0 <= j1 && j1 < chars.count {
                                if rows[i1][j1] == "*" {
                                    count += 1
                                }
                            }
                        }
                        
                        if count == 0 {
                            newRow.append(" ")
                        } else {
                            newRow.append(String(count))
                        }
                    }
                }
                result.append(newRow.joined(separator: ""))
            }
            return result
        }
    }
    var rows: [[String]] = []
    init(_ rows: [String]) throws {
        
        if rows.count <= 0 {
            throw BoardError.faultyBorder
        }
        
        let firstRow = rows[0].characters.map({String($0)})
        if firstRow.count <= 2 {
            throw BoardError.faultyBorder
        }
        
        if firstRow.first != "+" {
            throw BoardError.faultyBorder
        }
        
        if firstRow.last != "+" {
            throw BoardError.faultyBorder
        }
        
        for char in firstRow[1..<(firstRow.count - 1)] {
            if char != "-" {
                throw BoardError.faultyBorder
            }
        }
        
        if rows.first != rows.last {
            throw BoardError.faultyBorder
        }
        
        let columnCount = firstRow.count
        for row in rows[1..<(rows.count - 1)] {
            let chars = row.characters.map({String($0)})
            if columnCount != chars.count {
                throw BoardError.differentLength
            }
            if chars.first != "|" || chars.last != "|" {
                throw BoardError.faultyBorder
            }
            for char in chars[1..<(chars.count - 1)] {
                if char != "*" && char != " " {
                    throw BoardError.invalidCharacter
                }
            }
        }
        self.rows = rows.map({$0.characters.map({String($0)})})
    }
    func transform() -> [String] {
        return transformed
    }
    
}

enum BoardError: Error {
    case differentLength
    case faultyBorder
    case invalidCharacter
}
