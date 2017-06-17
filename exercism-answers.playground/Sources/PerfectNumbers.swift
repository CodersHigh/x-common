class NumberClassifier {
    enum numberType {
        case perfect, abundant, deficient
    }
    
    var classification: numberType
    
    init (number: Int) {
        let aliquotSum = (1...number/2).filter{number % $0 == 0}.reduce(0, +)
        if aliquotSum == number {
            classification = .perfect
        } else if aliquotSum < number {
            classification = .deficient
        } else {
            classification = .abundant
        }
    }
}
