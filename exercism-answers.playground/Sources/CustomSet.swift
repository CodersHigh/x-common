//Solution goes in Sources
import Foundation

class CustomSet<T>:Equatable where T:Comparable,T:Equatable{
    var set:Array<T>=[]
    var size:Int{
        get{
            return set.count
        }
    }
    var toSortedArray:Array<T>{
        get{
            var result=set.sorted(by:<)
            var res:Array<T>=[result[0]]
            for i in 1...result.count-1{
                if result[i] != result[i-1]{
                    res.append(result[i])
                }
            }
            return res
        }
    }
    init(_ set:Array<T>){
        var temp=set.sorted(by: <)
        if set.count==0{
            self.set=[]
            return
        }
        var res:Array<T>=[temp[0]]
        if temp.count>1{
            for i in 1...temp.count-1{
                if temp[i] != temp[i-1]{
                    res.append(temp[i])
                }
            }
        }
        self.set=res
    }
    func delete(_ target:T){
        var res:Array<T>=[]
        for item in set{
            if item != target {
                res.append(item)
            }
        }
        self.set=res
    }
    func difference(_ cset:CustomSet<T>)->CustomSet<T>{
        var res:Array<T>=[]
        for i in 0...set.count-1 {
            if cset.set.index(of: set[i]) != nil{
                continue
            }
            else{
                res.append(set[i])
            }
        }
        return CustomSet(res)
    }
    func isDisjoint(_ cset:CustomSet<T>)->Bool{
        for i in 0...cset.size-1{
            if cset.set.index(of: set[i]) != nil{
                return false
            }
        }
        return true
    }
    func intersection(_ cset:CustomSet<T>)->CustomSet<T>{
        var res:Array<T>=[]
        for i in 0...set.count-1 {
            if cset.set.index(of: set[i]) != nil{
                res.append(set[i])
            }
        }
        return CustomSet(res)
        
    }
    func containsMember(_ target:T)->Bool{
        for i in 0...set.count-1{
            if set[i]==target{
                return true
            }
        }
        return false
    }
    func put(_ element:T){
        if set.index(of:element) == nil{
            set.append(element)
        }
    }
    func isSupersetOf(_ cset:CustomSet<T>)->Bool{
        for item in cset.set{
            if set.index(of:item) == nil {
                return false
            }
        }
        return true
    }
    
    func removeAll(){
        set.removeAll()
    }
    func union(_ cset:CustomSet<T>)->CustomSet<T>{
        for item in cset.set{
            if set.index(of:item) == nil{
                set.append(item)
            }
        }
        return self
    }
    
    static func == (lhs:CustomSet<T>,rhs:CustomSet<T>)->Bool{
        var arrOne=lhs.set.sorted(by:<)
        var arrTwo=rhs.set.sorted(by:<)
        if arrOne.count != arrTwo.count{
            return false
        }
        if arrOne.count == 0 && arrTwo.count == 0 {
            return true
        }
        for i in 0...arrOne.count-1{
            if arrOne[i] != arrTwo[i]{
                return false
            }
        }
        return true
    }
}
