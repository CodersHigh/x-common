# Bowling

볼링 게임 점수를 계산해 보자.

볼링 게임은 10번의 프레임으로 구성된다. 한번의 프레임에서, 플레이어는 서있는 10개의 볼링 핀에 두번 볼을 던진다. 프레임에는 3가지 경우가 있을 수 있다.

* Open frame : 두 번 볼을 던져서 10개 핀을 모두 쓰러뜨리지 못한 경우이다. 넘어뜨린 핀의 개수가 이 프레임의 점수가 된다.

* Spare : 첫번째로 공을 던져서는 10개 미만으로 쓰러뜨렸지만 두번째 시도에서 남아 있는 핀을 전부 쓰러뜨린 경우이다. 이 경우에는 다음 프레임에서의 첫번째 시도에서 쓰러뜨린 핀의 개수 + 10 이 이 프레임의 점수가 된다.

* Strike : 첫번째 시도에서 10개 핀을 모두 쓰러뜨린 경우이다. 모두 쓰러뜨렸으므로 이 프레임에서 두번째 공은 던지지 않는다. 이 경우에는 다음번 프레임에서 쓰러뜨린 총 핀의 개수 + 10 이 이 프레임의 점수가 된다.

예를 들어 보자. 아래와 같이 3번의 프레임이 있었다고 하면,

| 프레임  1         | 프레임  2       | 프레임 3                 |
| :-------------: |:-------------:| :---------------------:|
| X (strike)      | 5/ (spare)    | 9 0 (open frame)       |

프레임 1의 점수 : 10 + 5 + 5 = 20

프레임 2의 점수 : 5 + 5 + 9 = 19

프레임 3의 점수 : 9 + 0 = 9

즉 프레임 3 까지의 총 점수는 48점이 된다.

10번째 프레임은 특별한 경우가 있을 수 있다. 만약 10번째 프레임에서 Spare 혹은 Strike 를 성공한 경우, 다음 프레임이 없으므로 점수를 계산할 수가 없다. 그래서 플레이어는 Fill Ball 이라는 기회를 획득한다. Spare 의 경우에 한 번 볼을 더 던지게 되고, Strike 의 경우에는 두 번 볼을 더 던지게 된다. 그 점수를 가지고 10번째 프레임의 점수를 계산한다. Fill Ball 에서 다시 Spare 혹은 Strike 를 했다고 해서 Fill Ball 의 기회를 또 얻는 것은 아니다. Fill Ball 은 단 한번이다.

어떤 사람이 각 시도에서 볼을 던져 넘어뜨린 핀의 개수가 순서대로 주어질 때, 그 게임에서 획득한 총 점수를 계산하는 클래스를 작성하라.

## Structure

Bowling 클래스를 작성한다.

다음 함수들을 작성한다.

```
func roll(pins: Int) throws
```

한 차례의 시도에서 넘어뜨린 핀의 개수를 pins 로 전달받는다. 현재까지의 총 점수를 계산한다.

```
func score() throws -> Int
```

이 게임의 최종 총 점수를 반환한다.

## Caution

다음의 경우들에 대하여, 적절한 BowlingError 를 throw 하여야 한다.

* 한 시도에서 쓰러뜨린 핀의 개수가 0 ~ 10 개가 아닌 경우 : invalidNumberOfPins
* 한 프레임에 쓰러뜨린 핀의 개수가 10을 초과할 경우 : tooManyPinsInFrame
* 아직 게임이 끝나지 않았는데 총 점수를 구하려는 경우 : gameInProgress
* 게임이 끝났는데도 더 공을 던져 점수 계산을 시도하는 경우 : gameIsOver

## Source

```
class Bowling {

    var turnCount = 0
    var currentScore = 0

    func roll(pins: Int) throws {
        /* write your code here */
    }

    func score() throws -> Int {
        /* write your code here */
    }
}

enum BowlingError: Error {
    case invalidNumberOfPins
    case tooManyPinsInFrame
    case gameInProgress
    case gameIsOver
}
```
