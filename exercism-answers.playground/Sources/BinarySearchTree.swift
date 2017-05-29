class BinarySearchTree {
    
    var left: BinarySearchTree!
    var right: BinarySearchTree!
    var data: Int
    
    init(_ data: Int) {
        self.data = data
    }
    
    func insert(_ value: Int) {
        if value <= data {
            if left == nil {
                left = BinarySearchTree(value)
            } else {
                left?.insert(value)
            }
        } else if value > data {
            if right == nil {
                right = BinarySearchTree(value)
            } else {
                right?.insert(value)
            }
        }
    }
    
    func allData() -> [Int] {
        let leftData = left?.allData() ?? []
        let rightData = right?.allData() ?? []
        
        return leftData + [data] + rightData
    }
}
