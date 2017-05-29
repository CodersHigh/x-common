# Hamming

유전자 변이는, 특정 DNA 의 핵산을 생성 혹은 복사할 때에 실수로 쉽게 발생한다. 뉴클레오타이드라는 물질들의 결합으로 만들어지는 핵산은 각 세포들에 필수적이므로, 한번 발생한 변이는 다른 세포들로 연쇄효과를 일으키며 퍼져나간다.

유전자 변이가 이렇게 쉽게 발생함에도 불구하고, 아주 적은 수의 변이만이 세포에 긍정적인 영향을 미친다. 실제로는 이런 좋은 영향을 가진 유전자 변이들이 세대에 걸쳐 누적되어 진화의 거시적인 효과를 이끌어 낸다.

가장 간단하고 또 흔한 핵산 변이는 '점 변이' 이다. 점 변이는, 핵산의 특정 위치에 있는 하나의 뉴클레오타이드가 다른 종류의 뉴클레오타이드로 바뀌는 것이다. 

같은 조상 유전자으로부터 복사된 두 개의 서로 다른 DNA 염기서열을 상응시켜 특정 위치에서 차이나는 뉴클레오타이드의 개수를 조사해 보면, 우리는 두 염기서열 사이의 진화 경로에서 얼마나 많은 점 변이가 발생했는지 그 측정 기준을 만들 수 있을 것이다.

이 값을 'Hamming distance' 라고 부른다.

예를 들어 보자.

뉴클레오타이드는 다음 4가지의 염기 중 어느 것을 가지고 있느냐에 따라 종류가 결정된다.

* 아데닌 Adenine (A)
* 구아닌 Guanine (G)
* 티민 Thymine (T)
* 시토신 Cytocine (C)

두 개의 DNA 염기서열을 조사하여 다음과 같았다고 하자.

    GAGCCTACTAACGGGAT
    CATCGTAATGACGGCCT
    ^ ^ ^  ^ ^    ^^

7 군데의 위치에서 뉴클레오타이드가 차이가 나는 것을 알 수 있다. 그러므로, 이 두 염기서열의 Hamming distance 는 7이다.

주어진 두 개의 염기서열에 대하여, Hamming distance 를 계산하는 클래스를 작성하라.

## Structure

Hamming 클래스를 작성한다.

다음 함수를 구현한다.

    class func compute(_ source: String, against: String) -> Int?

source, against 로 각각 염기 서열이 "ACCAGG" 와 같이 주어진다. Hamming distance 를 반환한다.

## Caution

두 염기서열의 길이가 다르면 비교가 불가능하므로, nil 을 반환한다.

## source

```
class Hamming {
    class func compute(_ source: String, against: String) -> Int? {
        /* write your code here */
    }
}
```
