# Robot Simulator

로봇 공장에는 로봇의 움직임을 확인하기 위한 테스트 설비가 있다.

로봇은 3가지 동작을 할 수 있다:

- 오른쪽으로 회전 : R
- 왼쪽으로 회전 : L
- 전진 : A

로봇들은 특정 방향(동, 서, 남, 북)을 바라본 상태로, 직교좌표계 위의 (x, y) 위치에 놓여 있다. 즉, (3, 8)은 (0, 0) 을 기준으로 북동쪽 위치다. 

로봇은 새로운 몇 가지의 지시를 받는다. 

예를 들어 "RAALAL" 이라는 문자열 지시의 의미는:
  - 오른쪽으로 회전
  - 2칸 전진
  - 왼쪽으로 회전
  - 1칸 전진
  - 다시 왼쪽으로 회전

로봇이 (7, 3) 위치에서 북쪽을 바라보고 시작했다고 하자. 그러면 위의 동작을 수행했을 때 {9, 4} 위치에서 서쪽을 바라보고 있을 것이다.

기준 위치에 놓인 로봇에 대해 지시가 주어질 때, 지시를 이행한 후의 로봇의 위치와 방향을 반환할 수 있는 클래스를 작성하라.

## Structure

SimulatedRobot 클래스를 작성한다.

다음 프로퍼티들을 작성한다.

    var bearing: Orientation

로봇이 가리키는 방향을 반환한다.

    var coordinates: [Int]

로봇의 좌표를 반환한다. 예를 들어 (1, 2) 라면 [1, 2] 를 반환한다.

다음 함수들을 작성한다.

    func place(x: Int, y: Int, direction: Orientation)

로봇을 (x, y) 위치에서 direction 방향을 보게 한다.

    func at(x: Int, y: Int)

로봇을 (x, y) 위치에 놓는다.

    func orient(_ directino: Orientation)

로봇이 direction 방향을 바라보게 한다.

    func instructions(_ string: String) -> [Instruction]

문자열로 주어지는 명령을 Instruction 배열로 변환하여 반환한다. 

    func evaluate(_ string: String) 

문자열로 주어진 명령을 로봇이 수행하게 한다.

방향을 나타내기 위해 Orientation 열거형을 정의한다. 다음 네 가지 요소를 가진다.

* East : 동쪽
* West : 서쪽
* South : 남쪽
* North : 북쪽

로봇에게 내리는 지시를 나타내기 위해 Instruction 열거형을 정의한다. 다음 세 가지 요소를 가진다.

* TurnRight : 오른쪽으로 회전
* TurnLeft : 왼쪽으로 회전
* Advance : 전진

## Source 

    class SimulatedRobot {

        var bearing: Orientation!
        var coordinates: [Int]!

        func place(x: Int, y: Int, direction: Orientation) {
            /* write your code here */
        }

        func at(x: Int, y: Int) {
            /* write your code here */
        }

        func orient(_ directino: Orientation) {
            /* write your code here */
        }

        func instructions(_ string: String) -> [Instruction] {
            /* write your code here */
        }

        func evaluate(_ string: String) {
            /* write your code here */
        }
    }

    enum Orientation {
        case Ease
        case West
        case South
        case North
    }

    enum Instruction {
        case TurnRight
        case TurnLeft
        case Advance
    }
