import Foundation

class Meetup {
    var meetup : Date?
    var dayComponent = DateComponents()
    
    let ordinalOption = [
        "1st" : 1,
        "2nd" : 2,
        "3rd" : 3,
        "4th" : 4,
        "last" : 5,
        "teenth" : 0
    ]
    
    init(year: Int, month: Int) {
        self.dayComponent.year = year
        self.dayComponent.month = month
    }
    
    private func findTeenthDay(_ dayOfWeek: Int) {
        let userCalendar = Calendar.current
        
        for d in (1...4) {
            self.dayComponent.weekday = dayOfWeek
            self.dayComponent.weekdayOrdinal = d
            self.meetup = userCalendar.date(from: dayComponent)!
            let tmpDate = userCalendar.dateComponents([.day], from: meetup!)
            
            
            if (tmpDate.day! >= 13 && tmpDate.day! <= 19) {
                break
            }
        }
    }
    
    private func findNonTeenthDay(_ dayOfWeek: Int, _ which: String) {
        self.dayComponent.weekday = dayOfWeek
        self.dayComponent.weekdayOrdinal = ordinalOption[which]
    }
    
    func day(_ dayOfWeek: Int, which: String) -> (String) {
        let descriptionStr : String
        let userCalendar = Calendar.current
        
        if which != "teenth" {
            findNonTeenthDay(dayOfWeek, which)
        } else {
            findTeenthDay(dayOfWeek)
        }
        
        self.meetup = userCalendar.date(from: dayComponent)!
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        
        descriptionStr = formatter.string(from: meetup!)
        
        return descriptionStr
    }
}
