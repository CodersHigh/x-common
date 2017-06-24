# Pascal Triangle

파스칼의 삼각형은, 아래와 같이 1로 시작하고, 이전 행의 좌, 우에 있는 숫자를 더해 아래에 씀으로서 만들어진다.

더할 숫자가 그 자리에 없는 경우, 0 으로 간주한다.


        1
       1 1
      1 2 1
     1 3 3 1
    1 4 6 4 1
    # ... etc

파스칼의 삼각형에서 특정 줄 번호를 전달받으면 그 줄의 숫자들을 모두 출력할 수 있는 클래스를 작성하라.

예를 들어 4를 전달받으면 [1, 3, 3, 1] 을 반환한다.

# Structure

PascalsTriangle 클래스를 작성한다. 생성자를 통해 파스칼 삼각형의 줄 번호를 전달받는다.

    init(_ row: Int)

다음 프로퍼티를 작성한다.

    var rows: [Int] 

그 줄의 숫자들을 정수의 배열로 반환한다.

## Source

    class PascalsTriangle {

        var row: Int

        var rows: [Int] {
            get {
                /* write your code here */
            }
        }

        init(_ row: Int) {
            self.row = row
        }
    }
