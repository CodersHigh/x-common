## Scrabble Score

각 글자들에 아래와 같이 점수를 매긴다고 하자.

    글자                                숫자
    A, E, I, O, U, L, N, R, S, T       1
    D, G                               2
    B, C, M, P                         3
    F, H, V, W, Y                      4
    K                                  5
    J, X                               8
    Q, Z                               10

그러면, 예를 들어 "cabbage"는 14점의 값이 메겨질 것이다.

- C에 3점
- A에 1점 (두 번)
- B에 3점 (두 번)
- G에 2점
- E에 1점

주어진 문자열에 대해 위 조건에 따라 점수를 계산할 수 있는 클래스를 작성하라.

## Structure

Scrabble 클래스를 작성한다. 생성자를 통해 대상 문자열을 전달받는다.

    init(_ target: String?)

다음 프로퍼티를 구현한다.

    var score: Int

전달받은 문자열의 점수를 정수로 반환한다.

다음 함수를 구현한다.

    class func score(_ target: String?) -> Int

대상 문자열을 전달받아 그 문자열의 점수를 반환한다.

## Source 

    class Scrabble {

        var target: String?

        var score: Int {
            get {
                /* write your code here */
            }
        }

        init(_ target: String?) {
            self.target = target
        }

        class func score(_ target: String?) -> Int {
            /* write your code here */
        }
    }
