class WordCount {
    var words:String
    init(words:String) {
        self.words = words
    }
    func count() -> Dictionary<String , Int> {
        var wordDict = [String: Int]()
        var word_l = words.lowercased()
        var word_tmp: String = ""
        for ch in word_l.characters {
            if((ch >= "a" && ch <= "z") || (ch >= "0" && ch <= "9")) {
                word_tmp.append(ch)
            }
            else {
                if(!word_tmp.isEmpty) {
                    if((wordDict[word_tmp]) != nil) {
                        wordDict[word_tmp] = wordDict[word_tmp]! + 1
                    }
                    else {
                        wordDict[word_tmp] = 1
                    }
                    word_tmp = ""
                }
                
            }
        }
        
        if(word_tmp != word_tmp.uppercased()) {
            if((wordDict[word_tmp]) != nil) {
                wordDict[word_tmp] = wordDict[word_tmp]! + 1
            }
            else {
                wordDict[word_tmp] = 1
            }
        }
        
        return wordDict
    }
}
