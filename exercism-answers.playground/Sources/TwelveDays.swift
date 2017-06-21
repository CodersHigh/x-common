import Foundation

class TwelveDaysSong {
    
    static let numberdays = ["first","second","third","fourth","fifth","sixth","seventh","eighth","ninth","tenth","eleventh","twelfth"]
    
    static let lyrics = [" a Partridge in a Pear Tree.",  " two Turtle Doves, and", " three French Hens,", " four Calling Birds,", " five Gold Rings,", " six Geese-a-Laying,", " seven Swans-a-Swimming,"," eight Maids-a-Milking,"," nine Ladies Dancing,"," ten Lords-a-Leaping,"," eleven Pipers Piping,"," twelve Drummers Drumming,","13","14"]
    
    static func verseret (_ i: Int) -> String {
        if (i > 0) { return (  TwelveDaysSong.lyrics[i] + verseret(i-1)  ) }
        else {return ( TwelveDaysSong.lyrics[i]  ) }
    }
    
    static func verse(_ day: Int) -> String {
        return ( "On the \(TwelveDaysSong.numberdays[day-1]) day of Christmas my true love gave to me," + verseret(day-1) + "\n" )
    }
    
    static func verses (_ no1: Int, _ no2: Int) -> String {
        return Array(no1...no2).map { verse($0) + "\n" }.joined()
    }
    
    static func sing() -> String {
        return verses(1, 12)
    }
    
}
