import Foundation

class GradeSchool {
    var roster = [Int:[String]]()
    
    func addStudent(student: String, grade: Int) {
        roster[grade] = (roster[grade] ?? []) + [student]
    }
    
    func studentsInGrade(grade: Int) -> [String] {
        return roster[grade] ?? []
    }
    
    var sortedRoster: [Int:[String]] {
        get {
            var sorted = [Int:[String]]()
            for k in roster.keys.sorted() {
                sorted[k] = roster[k]!.sorted()
            }
            return sorted
        }
    }
}
