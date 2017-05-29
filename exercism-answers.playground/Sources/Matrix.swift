import Foundation

/*Matrix is a 2D matrix*/
class Matrix {
    var matrix = [[Int]]()
    init(_ matrixString: String) {
        for line in matrixString.components(separatedBy: "\n") {
            matrix.append(
                
                line.trimmingCharacters(in: .whitespacesAndNewlines).components(separatedBy: " ")
                .map{ Int($0)! }
            )
        }
    }
    
    /*columns get the columsn in the matrix*/
    var columns: [[Int]] {
        var cols = [[Int]]()
        for c in 0 ..< rows[0].count {
            var col = [Int]()
            for r in 0 ..< rows.count {
                col.append(rows[r][c])
            }
            cols.append(col)
        }
        return cols
    }
    
    /*rows get the rows of the matrix*/
    var rows: [[Int]] {
        return matrix
    }
}
