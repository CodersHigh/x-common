import Foundation

class SaddlePointsMatrix {
    var rows: [[Int]]
    var columns: [[Int]] = []
    var saddlePoints = [[Int]]()
    
    init(_ str: String) {
        let matrix : [[Int]] = str.components(separatedBy: "\n").map{$0.components(separatedBy: " ")}.map({ $0.flatMap({ Int($0) }) })
        
        self.rows = matrix.map{$0.map{$0}}
        
        var columns = [[Int]](repeating: [Int](), count: rows.first?.count ?? 0)
        
        self.columns = self.rows.reduce(columns, {
            for (i, x) in $1.enumerated() {
                columns[i].append(x)
            }
            return columns
        })
        
        // find saddlePoints
        for n in 0..<rows.count {
            for m in 0..<columns.count {
                let maxElemInRow = self.rows[n].max()
                let minElemInCol = self.columns[m].min()
                if maxElemInRow == minElemInCol {
                    self.saddlePoints.append([n, m])
                }
            }
        }
    }
}
