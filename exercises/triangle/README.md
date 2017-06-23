# Triangle

세 선분이 주어졌을 때, 그 중 가장 긴 선분의 길이가 나머지 두 선분의 길이를 합친 것보다 더 크면, 이 세 선분으로는 삼각형을 만들 수 없다.

세 선분의 길이가 주어질 때, 그 선분들로 삼각형을 만들 수 있는지, 만들 수 있다면 어떤 삼각형을 만들 수 있는지 판별하는 클래스를 작성하라.

## Structure

Triangle 클래스를 작성하라. 생성자로 세 변의 길이를 각각 전달받는다.

    init(_ a: Int, _ b: Int, _ c: Int)

다음 프로퍼티를 구현한다.

    var kind: String

다음 문자열을 상황에 따라 반환한다.

* 삼각형을 만들 수 없는 경우: 'ErrorKind'
* 이등변삼각형의 경우: 'Isosceles'
* 정삼각형의 경우: 'Equilateral'
* 이등변삼각형, 정삼각형이 아닌 삼각형의 경우: 'Scalene'

# Source

    class Triangle {

        var a: Int
        var b: Int
        var c: Int

        var kind: String {
            get {
                /* write your code here */
            }
        }

        init(_ a: Int, _ b: Int, _ c: Int) {
            self.a = a
            self.b = b
            self.c = c
        }
    }
