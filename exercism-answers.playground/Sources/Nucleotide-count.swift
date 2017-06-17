import Foundation

class DNA {
    var nucleotideCounts: [String:Int] = ["T": 0, "A": 0, "C": 0, "G": 0]
    
    init?(_ strand: String) {
        let characters = strand.uppercased().characters.map{String($0)}
        for c in characters {
            if let old = self.nucleotideCounts[c] {
                self.nucleotideCounts[c] = old + 1
            } else {
                return nil
            }
        }
    }
    
    func count(_ nucleotide: String) -> Int {
        return self.nucleotideCounts[nucleotide]!
    }
    
    func counts() -> [String: Int] {
        return self.nucleotideCounts
    }
}
