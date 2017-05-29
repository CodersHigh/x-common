# Kindergarten Garden

어느 유치원 수업에서, 식물을 기르는 법에 대해 가르치고 있다. 선생님들은 배우기만 하는 것 보다 진짜 흙에 진짜 식물을 씨를 심어 키워 보는 것이 더 좋다고 생각한다.

심을 수 있는 식물은 잔디 grass, 토끼풀 clover, 무 radishes, 제비꽃 violets 네 가지 종류가 있다.

정원을 만들기 위해, 창틀 가까이에 스티로폼 컵들을 두 줄로 나열해 두고, 각각의 컵에 무작위로 하나씩의 식물을 심는다.

다음과 같은 모양이 된다.

```plain
[window][window][window]
........................ # 각각의 점은 하나의 컵을 의미
........................
```

수업에는 12명의 아이들이 있다.

* Alice, Bob, Charlie, David, Eve, Fred, Ginny, Harriet, Ileana, Joseph, Kincaid, Larry.

아이들은 각자 이름의 알파벳 순으로 위 아래 각 줄에서 왼쪽부터 2개씩, 총 4개의 컵을 배정받는다. 그 컵에 심어진 식물을 키우게 된다. 

예를 들어, Alice 의 경우 이름이 첫번째이므로 윗 줄 가장 왼쪽 2개와 아랫 줄 가장 왼쪽 2개를 배정받는다. 정원은 다음과 같은 모양이 될 것이다.

```plain
[window][window][window]
VR......................
RG......................
```

윗 줄 2개에는 제비꽃과 무, 아랫 줄 2개에는 무와 잔디가 심어진 것을 나타낸 것이다.

정원이 상황이 주어질 때, 어떤 아이가 어떤 식물들을 키우는지 알 수 있는 클래스를 작성하라. 이때, 아이들이 바뀔 경우를 대비하여, 다른 아이들의 목록이 주어졌을 때도 같은 작업을 수행할 수 있도록 하여야 한다.

## Structure

정원의 상황은 예를 들어 다음과 같이 문자열로 표시한다.

    "VRCGVVRVCGGCCGVRGCVCGCGV\nVRCCCGCRRGVCGCRVVCVGCGCV"

이는 

    [window][window][window]
    VRCGVVRVCGGCCGVRGCVCGCGV
    VRCCCGCRRGVCGCRVVCVGCGCV

를 표시한 것이다.

Garden 클래스를 작성한다.

다음 생성자들을 작성한다.

    init(_ garden: String)

garden 으로 주어지는 정원의 상황에 대해 12 명의 아이들이 각각 관리할 식물들을 알 수 있는 클래스로 초기화한다.

    init(_ garden: String, children: [String])

위의 생성자와 같은 기능을 수행하지만, 12명의 아이들 대신 children 으로 전달받은 아이들의 이름에 따라 클래스를 초기화한다.

다음 함수를 작성한다.

    func plantsForChild(_ name: String) -> [Plants]

name 으로 주어진 아이가 키울 4개의 식물을 반환한다.

Plant 열거형을 작성한다.

다음 네 가지 요소를 갖추어야 한다.

* Grass
* Clover
* Radishes
* Violets

## Source

    class Garden {

        init(_ garden: String) {
            /* write your code here */
        }

        init(_ garden: String, children: [String]) {
            /* write your code here */
        }

        func plantsForChild(_ name: String) -> [Plants] {
            /* write your code here */
        }
    }

    enum Plants {
        case Grass
        case Violets
        case Clover
        case Radishes
    }
