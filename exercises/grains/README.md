# Grains

옛날에 어느 나라의 왕자의 목숨을 현명한 신하가 구하였다. 왕은 그 신하가 원하는 것은 무엇이든 주겠다고 약속하였다. 그 신하는 왕이 체스를 좋아하는 것을 알았으므로, 다음과 같은 방법으로 곡물을 달라고 요구하였다.

첫번째 칸에는 1 개, 두번째 칸에는 2 개, 세번째 칸에는 4 개를 놓는다. 이와 같은 식으로 계속 2배씩 곡물의 개수를 늘려 다음 칸에 둔다. 그렇게 놓인 모든 곡물을 가져간다.

체스판은 가로 세로 각각 8 칸씩, 총 64칸으로 되어 있다.

주어진 칸에 대하여, 그 칸에 놓일 곡물의 개수를 계산하고, 또한 체스판에 놓인 전체 곡물의 개수를 계산하는 클래스를 작성하라.

## Structure

Grains 클래스를 작성한다. 

다음 프로퍼티를 작성한다.

```
class var total: Int
```

왕이 신하에게 주어야 할 곡물의 총 개수를 반환한다.

다음 함수를 작성한다.

```
class func square(_ location: Int) throws -> Int
```

location 으로 칸의 위치가 주어지면, 그 칸에 놓일 곡물의 개수를 반환한다.

## Caution

칸의 위치가 1 보다 작거나 64 보다 크면 체스판에 둘 수 없으므로, GrainError 를 반환한다.
* inputTooHigh : 칸의 위치가 64 보다 큰 경우
* inputTooLow : 칸의 위치가 1 보다 작은 경우

## Source

```
class Grains {
    class var total: Int {
        get {
            /* write your code here */
        }
    }

    class func square(_ location: Int) throws -> Int {
        /* write your code here */
    }
}

enum GrainsError: Error {
    case inputTooLow
    case inputTooHigh
}
```
