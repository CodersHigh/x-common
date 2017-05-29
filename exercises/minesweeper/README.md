# Minesweeper

지뢰찾기는 널리 알려진 인기 게임이다. 격자형으로 된 판에 지뢰들이 숨어 있다. 각 칸들에는, 수직, 수평, 대각선 방향으로 인접한 8칸에 숨어있는 지뢰의 개수가 표시된다. 그 숫자를 이용해 지뢰의 위치를 찾으면 된다.

예를 들어 판에 다음과 같이 지뢰가 배치되어 있다고 하자. 지뢰는 '*' 로 표시된다.

    +-----+
    | * * |
    |  *  |
    |  *  |
    |     |
    +-----+

판의 각 칸들에 다음과 같이 숫자들이 표시되어야 한다.

    +-----+
    |1*3*1|
    |13*31|
    | 2*2 |
    | 111 |
    +-----+

지뢰의 위치가 주어졌을 때, 그에 따라 지뢰찾기 판에 숫자를 표시해 줄 수 있는 클래스를 작성하라.

## Structure

Board 클래스를 작성한다. 생성자를 통해 지뢰의 위치가 표시된 판을 전달받는다.

    init(_ board:[String])

판은 다음과 같이 문자열의 배열로 전달된다. 예를 들어 다음과 같은 판이라면

    +-----+
    | * * |
    |  *  |
    |  *  |
    |     |
    +-----+

이러한 문자열의 배열로 표시된다.

    "+-----+" + "| * * |" + "|  *  |" + "|  *  |" + "|     |" + "+-----+"

다음 함수를 작성한다.

    func transform() throws -> [String]

전달받은 판의 빈 칸들에 지뢰의 위치에 따라 숫자를 표시하여 반환한다.

## Caution

다음의 경우들에 적절한 BoardError 를 throw 하여야 한다.

* differentLength : 전달받은 판의 각 행이 서로 길이가 다른 경우
* faultBorder : 판의 가장자리(+, -, |) 가 제대로 표시되지 않았을 경우
* invalidCharacter : +, -, |, *, 공백, 숫자를 제외한 다른 문자가 포함된 경우

## Source

    class Board {

        var board: [String]

        init(_ board: [String]) {
            self.board = board
        }

        func transform() throws -> [String] {
            /* write your code here */
        }
    }

    enum BoardError: Error {
        case differentLength
        case faultBorder
        case invalidCharacter
    }
