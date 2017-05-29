import Foundation

func hey(_ input: String) -> String {

    if input.replacingOccurrences(of: " ", with: "") == "" {
        return "Fine. Be that way!"
    }

    if input.rangeOfCharacter(from: CharacterSet.letters) != nil
        && input.uppercased() == input {
        return "Whoa, chill out!"
    }
    
    if input.characters.last! == "?" {
        return "Sure."
    }
    
    return "Whatever."
}
