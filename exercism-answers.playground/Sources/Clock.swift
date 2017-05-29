import Foundation

// operator overloading
func == (left: Clock, right: Clock) -> Bool{
    return left.description == right.description
}

class Clock: CustomStringConvertible, Equatable {
    
    var hour, minute: Int
    var description: String
    
    init (hours: Int = 0, minutes: Int = 0) {
        var minute = minutes % 60
        let additionalHours = minutes / 60
        var hour = (hours + additionalHours) % 24
        
        while minute < 0 {
            minute += 60
            hour -= 1
        }
        
        while hour < 0 {
            hour += 24
        }
        
        self.hour = hour
        self.minute = minute
        
        let hrStr = (hour < 10) ? "0\(hour)" : String(hour)
        let mintStr = (minute < 10) ? "0\(minute)" : String(minute)
        
        description = "\(hrStr):\(mintStr)"
    }
    
    func add (minutes: Int) -> Clock {
        return Clock(hours: hour, minutes: minute + minutes)
    }
    
    func subtract (minutes: Int) -> Clock {
        return Clock(hours: hour, minutes: minute - minutes)
    }
}
