# Grade School

학생들의 이름과 그들의 성적이 주어질 때, 그에 따라 명단을 작성해 보자.

다음의 기능을 가진 클래스를 작성하라.

* 어떤 학생의 성적을 이름과 점수를 묶어 등록. 같은 점수를 가진 학생들은 하나로 묶어 등록.
* 어떤 점수를 가진 학생들의 전체 목록을 반환
* 전체 학생 목록을 정렬하여 반환. 이때, 점수는 오름차순으로 정렬하고, 각 점수 내에서 여러 학생이 있는 경우 이름을 알파벳 순으로 정렬.

## Structure

GradeSchool 클래스를 작성한다.

다음 프로퍼티를 구현한다.

```
var sortedRoster: [Int:[String]]
```

정렬된 전체 학생 목록을 반환한다. key 로 학생 점수, value 로 그 점수대 학생들의 이름을 가진다.

다음 함수들을 구현한다.

```
func addStudent(_ name: String, grade: Int)
```

목록에 학생을 추가한다. name 은 학생의 이름, grade 는 학생의 점수이다.

```
func studentInGrade(_ grade: Int) -> [String]
```

grade 로 어떤 점수를 전달받으면, 그 점수에 해당하는 학생들의 이름을 배열로 반환한다.

## Caution

같은 이름을 가진 다른 학생은 없다고 가정한다.

## Source

```
class GradeSchool {

    var roster: [Int:[String]] = [:]

    var sortedRoster: [Int:[String]] {
        get {
            /* write your code here */
        }
    }

    func addStudent(_ name: String, grade: Int) {
        /* write your code here */
    }

    func studentsInGrade(_ grade: Int) -> [String] {
        /* write your code here */
    }
}
```
