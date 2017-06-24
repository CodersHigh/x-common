class FoodChain{
    
    static let commonBegin = "I know an old lady who swallowed a "
    
    static let eachBegin:[Int:String] = [
        1:"fly.\n",
        2:"spider.\nIt wriggled and jiggled and tickled inside her.\n",
        3:"bird.\nHow absurd to swallow a bird!\n",
        4:"cat.\nImagine that, to swallow a cat!\n",
        5:"dog.\nWhat a hog, to swallow a dog!\n",
        6:"goat.\nJust opened her throat and swallowed a goat!\n",
        7:"cow.\nI don't know how she swallowed a cow!\n",
        8:"horse.\nShe's dead, of course!"]
    
    static let eachMid:[Int:String] = [
        2:"She swallowed the spider to catch the fly.\n",
        3:"She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.\n",
        4:"She swallowed the cat to catch the bird.\n",
        5:"She swallowed the dog to catch the cat.\n",
        6:"She swallowed the goat to catch the dog.\n",
        7:"She swallowed the cow to catch the goat.\n"]
    
    static var commonEnd = "I don't know why she swallowed the fly. Perhaps she'll die."
    
    static func verse(_ num:Int) -> String{
        var res = commonBegin + eachBegin[num]!
        if num == 8{
            return res
        }
        var i = num
        while(i > 1){
            res += eachMid[i]!
            i -= 1
        }
        res += commonEnd
        return res
    }
    
    static func song() -> String{
        var res = String()
        for i in 1...7{
            res += verse(i) + "\n\n"
        }
        res += verse(8)
        return res
    }
}

// array, 문자열 다루기
