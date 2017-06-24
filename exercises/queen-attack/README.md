# Queen Attack

체스 게임에서, 퀸은 같은 행, 열, 대각선에 있는 말을 공격할 수 있다.

8 * 8 크기의 체스판 위에서, 흰색 퀸이 (2, 3)에 있고 검정색 퀸이 (5, 6)에 있다면 이렇게 표현할 수 있다.

    _ _ _ _ _ _ _ _
    _ _ _ _ _ _ _ _
    _ _ _ W _ _ _ _
    _ _ _ _ _ _ _ _
    _ _ _ _ _ _ _ _
    _ _ _ _ _ _ B _
    _ _ _ _ _ _ _ _
    _ _ _ _ _ _ _ _


이때 두 퀸은 서로를 공격할 수 있다. 서로 대각선 위치에 있기 때문이다.

두 퀸의 좌표가 주어질 때, 두 퀸이 서로를 공격할 수 있는지 아닌지 판별할 수 있는 클래스를 작성하라.

## Structure

Queens 클래스를 작성한다. 

다음 생성자들을 작성한다.

    init?() throws

흰색 퀸을 (0, 3) 에, 검은색 퀸을 (7, 3) 에 배치한다.

    init?(white: [Int], black: [Int]) throws

흰색 퀸과 검은색 퀸의 위치를 전달받아 배치한다. 위치는 정수의 배열로 전달받는다. 예를 들어 (1, 3) 은 [1, 3] 이다.

다음 프로퍼티들을 구현한다.

    var white: [Int]
    var black: [Int]

흰색 퀸과 검은색 퀸의 위치를 각각 반환한다.

    var description: String

흰색 퀸과 검은색 퀸이 배치된 체스판을 문자열 형태로 반환한다. 예를 들어 흰색 퀸이 (7, 1), 검은색 퀸이 (0, 0) 에 배치된 경우 

    "B _ _ _ _ _ _ _\n" +
    "_ _ _ _ _ _ _ _\n" +
    "_ _ _ _ _ _ _ _\n" +
    "_ _ _ _ _ _ _ _\n" +
    "_ _ _ _ _ _ _ _\n" +
    "_ _ _ _ _ _ _ _\n" +
    "_ _ _ _ _ _ _ _\n" +
    "_ W _ _ _ _ _ _"

이와 같은 형태로 반환한다.

    var canAttack: Bool

흰색 퀸과 검은색 퀸이 서로를 공격할 수 있는지 없는지의 여부를 true 혹은 false 로 반환한다.

## Caution

생성자에서 다음 상황들에 대해 적절한 InitError 를 throw 하여야 한다.

* InvalidCoordinates : 8 * 8의 크기의 체스판을 벗어나는 좌표를 입력받았을 때
* IncorrectNumberOfCoordinates : 좌표로 입력받은 숫자의 개수가 2개가 아닐 때, 예를 들어 [1, 2, 3] 을 좌표로 전달받았을 때
* SameSpace : 두 퀸이 같은 좌표에 배치될 때

## Source

    class QueensAttack {

        var white: [Int]
        var black: [Int]

        var description: String

        init?() throws {
            /* write your code here */
        }

        init?(white: [Int], black: [Int]) throws {
            /* write your code here */
        }
    }

    enum InitError: Error {
        case InvalidCoordinates
        case IncorrectNumberOfCoordinates
        case SameSpace
    }
