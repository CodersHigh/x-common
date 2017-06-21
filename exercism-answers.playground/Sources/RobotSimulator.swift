import Foundation

class SimulatedRobot {
    enum direction {
        case north, south, east, west
    }
    
    enum instruction {
        case turnRight, turnLeft, advance
    }
    
    var coordinates : [Int] = [0,0]
    var bearing: direction = .north
    
    func orient (_ dir: direction) {
        self.bearing = dir
    }
    
    func at(x: Int, y: Int) {
        self.coordinates = [x, y]
    }
    
    func turnLeft() {
        switch self.bearing {
        case .north:
            self.bearing = .west
        case .east:
            self.bearing = .north
        case .south:
            self.bearing = .east
        default:
            self.bearing = .south
        }
    }
    
    func turnRight() {
        switch self.bearing {
        case .north:
            self.bearing = .east
        case .east:
            self.bearing = .south
        case .south:
            self.bearing = .west
        default:
            self.bearing = .north
        }
    }
    
    func advance() {
        switch self.bearing {
        case .north:
            self.coordinates[1] += 1
        case .east:
            self.coordinates[0] += 1
        case .south:
            self.coordinates[1] -= 1
        default: //west
            self.coordinates[0] -= 1
        }
    }
    
    func instructions(_ inst: String) -> [instruction] {
        var instArray = [instruction]()
        for (_, char) in inst.characters.enumerated() {
            switch char {
            case "R":
                instArray.append(.turnRight)
            case "L":
                instArray.append(.turnLeft)
            default:
                instArray.append(.advance)
            }
        }
        return instArray
    }
    
    func place(x: Int, y: Int, direction: direction) {
        self.coordinates = [x, y]
        self.bearing = direction
    }
    
    func evaluate(_ inst: String) {
        let instList = instructions(inst)
        for n in instList {
            switch n {
            case .turnRight:
                turnRight()
            case .turnLeft:
                turnLeft()
            default:
                advance()
            }
        }
    }
}
