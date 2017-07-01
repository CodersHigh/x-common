# Saddle Point

다음과 같은 행렬이 있다:

        0  1  2
      |---------
    0 | 9  8  7
    1 | 5  3  2     <--- (1,0)에 saddle point
    2 | 6  6  7

이 행렬에서는 (1, 0)에 안장점(鞍裝點, saddle point)이 있다. 

안장점이란, 같은 행 안에서는 모든 원소들보다 값이 같거나 크고, 같은 열 안에서는 값이 같거나 작은 경우를 말한다.

행렬 안에는 saddle point가 없을 수도, 여러개가 있을 수도 있다.

주어진 행렬에 대해 모든 안장점을 찾아낼 수 있는 클래스를 작성하라.

## Structure

SaddlePointMatrix 클래스를 작성한다. 생성자를 통해 행렬을 전달받는다.

    init(_ matrix: String)

행렬은 다음과 같이 문자열의 형태로 전달받는다. 예를 들어

        0  1  2
      |---------
    0 | 9  8  7
    1 | 5  3  2
    2 | 6  6  7

이 행렬은 문자열로 다음과 같이 표현된다.

    "9 8 7\n5 3 2\n6 6 7"

다음 프로퍼티들을 작성한다.

    var rows: [[Int]]

rows[n] 을 호출하면, 행렬의 n 행의 요소들을 정수의 배열로 반환한다.

    var columns: [[Int]]

columns[n] 을 호출하면, 행렬의 n 열의 요소들을 정수의 배열로 반환한다.

    var saddlePoints: [[Int]]

행렬에 존재하는 모든 안장점의 좌표들을 찾아 배열로 반환한다. 좌표는 예를 들어 0행 2열의 경우 [0, 2] 로 표현된다.

## Source

    class SaddlePointMatrix {

        var matrix: [[Int]]

        var rows: [[Int]] {
            get {
                /* write your code here */
            }
        }

        var columns: [[Int]] {
            get {
                /* write your code here */
            }
        }

        var saddlePoints: [[Int]] {
            get {
                /* write your code here */
            }
        }

        init(_ matrix: String) {
            /* write your code here */
        }
    }
