import Foundation

class Gigasecond {
    var description: String = ""
    init?(_ from: String) {
        let dateFormatter = DateFormatter()
        dateFormatter.timeZone = TimeZone(secondsFromGMT: 0)
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        
        if let date = dateFormatter.date(from: from) {
            
            let later = date.addingTimeInterval(1_000_000_000)
            description = dateFormatter.string(from: later)
        } else {
            return nil
        }
    }
}
