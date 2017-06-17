
class PascalsTriangle {
    var rows = [[Int]]()
    
    init(_ rowNum: Int) {
        for i in 1...rowNum {
            if i == 1 {
                rows.append([1])
            } else if i == 2 {
                rows.append([1, 1])
            } else {
                var row: [Int] = [1]
                for j in 0..<(i - 2) {
                    row.append(rows[i - 2][j] + rows[i - 2][j + 1])
                }
                row.append(1)
                rows.append(row)
            }
        }
    }
}
