import Foundation

class Triplet {
    var triplet : (Int,Int,Int)
    var product : Int { return triplet.0 * triplet.1 * triplet.2 }
    var sum : Int { return triplet.0 + triplet.1 + triplet.2 }
    var isPythagorean : Bool
    {
        return isPyth (first: triplet.0, second: triplet.1, third: triplet.2)
    }
    
    static func Where(_ minFactor: Int! = 1,maxFactor: Int, sum: Int! = 0) -> [Triplet]
    {
        var summit = sum
        var returnTriplet = [Triplet]()
        var found = false
        for first in minFactor...maxFactor
        {
            for second in minFactor...maxFactor
            {
                for third in minFactor...maxFactor
                {
                    if isPyth(first: first, second: second, third: third)
                    {
                        let testTriplet = Triplet(first,second,third)
                        if returnTriplet.count == 0 && testTriplet.sum == summit{
                            returnTriplet.append(testTriplet)
                            break
                        }
                        found = false
                        for trup in returnTriplet
                        {
                            if (trup.product == testTriplet.product)
                            {
                                found = true
                                break
                            }
                        }
                        if sum == 0 {summit = testTriplet.sum}
                        if found == false  && testTriplet.sum == summit
                        {
                            returnTriplet.append(Triplet(first,second,third) )
                        }
                    }
                }
            }
        }
        return returnTriplet
    }
    
    init(_ first: Int, _ second: Int, _ third: Int) {
        triplet = (first,second,third)
    }
    
}

func isPyth (first:Int, second:Int, third:Int) -> Bool
{
    return pow(Double(first), 2.0)
        + pow(Double(second), 2.0)
        == pow(Double(third), 2.0)
}
