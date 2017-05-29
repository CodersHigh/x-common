import Foundation

class Anagram {
    let word: String
    
    init(word: String) {
        self.word = word
    }
    
    func match(_ list: [String]) -> [String] {
        var result = [String]()
        let input = self.word.lowercased().characters.sorted().map{String($0)}.reduce("", +)
        for str in list {
            let strTmp = str.lowercased().characters.sorted().map{String($0)}.reduce("", +)
            if strTmp == input &&
                str.lowercased() != self.word.lowercased() {
                result.append(str)
            }
        }
        return result
    }
}
