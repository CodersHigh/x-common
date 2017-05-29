

class ETL {
    class func transform(_ original: [Int:[String]]) -> [String:Int] {
        var converted = [String:Int]()
        
        for (key, value) in original {
            for i in 0..<value.count {
                converted[value[i].lowercased()] = key
            }
        }
        
        return converted
    }
}
