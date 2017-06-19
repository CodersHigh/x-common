import Foundation

enum WordProblemError: Error {
    case Irrelevant
}

class WordProblem{
    var problem:String
    init(_ str:String){
        problem = str
    }
    
    func answer() throws -> Int{
        if !problem.hasPrefix("What is ") || !problem.hasSuffix("?"){
            throw WordProblemError.Irrelevant
        }
        problem = problem.substring(from: problem.index(problem.startIndex, offsetBy:8))
        problem = problem.substring(to: problem.index(problem.endIndex, offsetBy:-1))
        let list = problem.components(separatedBy: " ")
        var isNum = true
        var op = "+"
        var res = 0
        for x in list{
            if isNum{
                
                let num = Int(x)
                
                if num == nil {
                    throw WordProblemError.Irrelevant
                }
                
                switch op {
                case "+":
                    res += num!
                    break
                case "-":
                    res -= num!
                    break
                case "*":
                    res *= num!
                    break
                case "/":
                    res /= num!
                    break
                default:
                    throw WordProblemError.Irrelevant
                }
            }
            else{
                switch x {
                case "plus":
                    op = "+"
                    break
                case "minus":
                    op = "-"
                    break
                case "multiplied":
                    op = "*"
                    isNum = !isNum
                    break
                case "divided":
                    op = "/"
                    isNum = !isNum
                    break
                case "by":
                    break
                default:
                    throw WordProblemError.Irrelevant
                }
            }
            isNum = !isNum
        }
        return res
    }
}
