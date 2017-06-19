import Foundation

class Element<T> {
    
    var value: T?
    var next: Element<T>?
    
    func swapElements()->Element<T> {
        if (self.next == nil) { return self}
        let temp = self.next?.value
        self.next?.value = self.value
        self.value = temp
        return self
    }
    
    func reverseElements()->Element<T> {
        if (self.next == nil) { return self}
        let temp = self.next?.value
        self.next?.value = self.value
        self.value = temp
        return self
    }
    
    func toArray() -> [T] {
        var arry = [T]()
        if self.value == nil {return []}
        arry.append(self.value!)
        if self.next != nil {
            arry.append(contentsOf: self.next!.toArray())
        }
        return arry
    }
    
    static func fromArray(_ arr: [T]) -> Element {
        var test = Element(arr.first,nil)
        if arr.count < 2 {return test}
        let head = test
        for n in 1...arr.count-1
        {
            let nextclm = Element(arr[n],nil)
            test.next = nextclm
            test = nextclm
        }
        return head
    }
    
    init(_ value: T? = nil, _ Second: Element<T>? = nil ) {
        self.value = value
        self.next = Second
    }
}
