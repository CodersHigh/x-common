import Foundation

class OCR {
    
    enum OCRError: Error {
        case invalidNumberOfLines
        case invalidNumberOfColumns
    }
    
    let asciiNumbers: [String: String] = [
        " _ \n| |\n|_|\n   ": "0",
        "   \n  |\n  |\n   ": "1",
        " _ \n _|\n|_ \n   ": "2",
        " _ \n _|\n _|\n   ": "3",
        "   \n|_|\n  |\n   ": "4",
        " _ \n|_ \n _|\n   ": "5",
        " _ \n|_ \n|_|\n   ": "6",
        " _ \n  |\n  |\n   ": "7",
        " _ \n|_|\n|_|\n   ": "8",
        " _ \n|_|\n _|\n   ": "9"
    ]
    
    var text: String
    
    init(_ text: String) throws {
        
        let rows = text.components(separatedBy: "\n")
        if rows.count % 4 != 0 {
            throw OCRError.invalidNumberOfLines
        }
        
        self.text = ""
        
        let rowCount = rows.count / 4
        
        for counter in (0..<rowCount) {
            
            let offset = counter * 4
            let beginIndex = rows.index(rows.startIndex, offsetBy: offset, limitedBy:rows.endIndex)
            let endIndex = rows.index(beginIndex!, offsetBy: 4, limitedBy:rows.endIndex)
            
            let x = rows[beginIndex!..<endIndex!]
            
            let numbers = try self.tokenize(text, rows: Array(x))
            
            if !self.text.isEmpty {
                self.text += ","
            }
            
            for single in numbers {
                self.text += self.convert(single)
            }
        }
        
    }
    
    func tokenize(_ input: String, rows: [String]) throws -> [String] {
        
        var letterArray = [String]()
        
        let letterCount: Int = (rows.first?.characters.count)! / 3
        
        for letterIndex in (0..<letterCount) {
            
            var letter = ""
            for rowIndex in (0..<rows.count) {
                
                let line = rows[rowIndex]
                
                if line.characters.count % 3 != 0 {
                    throw OCRError.invalidNumberOfColumns
                }
                
                let offset = letterIndex * 3
                let beginIndex = line.index(line.startIndex, offsetBy: offset, limitedBy:line.endIndex)
                
                let endIndex = line.index(beginIndex!, offsetBy: 3, limitedBy:line.endIndex)
                
                let substr = line.substring(with: beginIndex!..<endIndex!)
                
                letter += substr
                
                if rowIndex != rows.count - 1 {
                    letter += "\n"
                }
            }
            
            letterArray.append(letter)
        }
        
        return letterArray
    }
    
    func convert(_ input: String) -> String {
        var result = ""
        
        if let numberString = asciiNumbers[input] {
            result += numberString
        } else {
            result += "?"
        }
        
        return result
    }
    
    func converted() -> String {
        return self.text
    }
}
