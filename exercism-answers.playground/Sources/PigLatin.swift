import Foundation

class PigLatin {
    static func translate(_ raw: String) -> String {
        let tmp = raw.components(separatedBy: " ").map({PigLatin.pigify($0)})
        return tmp.joined(separator: " ")
    }
    static func pigify(_ raw: String) -> String {
        let vowels = ["a", "e", "i", "o", "u"]
        var result = raw
        var hasVowelHead = false
        while !hasVowelHead {
            var item = result.substring(to: result.index(result.startIndex, offsetBy: 1))
            for vowel in vowels {
                if result.hasPrefix(vowel) {
                    hasVowelHead = true
                    break
                }
            }
            if result.hasPrefix("qu") {
                item = "qu"
                hasVowelHead = false
            }
            if result.hasPrefix("yt") || result.hasPrefix("xr") {
                hasVowelHead = true
            }
            if !hasVowelHead {
                result = result.substring(from: result.index(result.startIndex, offsetBy: item.characters.count)) + result.substring(to: result.index(result.startIndex, offsetBy: item.characters.count))
            }
        }
        result += "ay"
        return result
    }
}
