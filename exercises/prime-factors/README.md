# Prime Factors

소수는 자기 자신과 1로만 나눠지는 수를 말한다. 1은 소수가 아니다.

2 이상의 자연수는, 반드시 소수들의 곱으로 표현할 수 있다. 예를 들어 30 은 2 * 3 * 5 로 표현 가능하다.
이때 2, 3, 5를 30의 소인수 Prime Factor 라고 한다. 이 과정을 소인수분해라고 한다.

주어진 수에 대하여, 곱해진 소인수들을 모두 찾을 수 있는 클래스를 작성하라.

예를 들어, 60 이 주어지면 [2, 2, 3, 5] 를 반환해야 한다.

## Structure

PrimeFactors 클래스를 작성한다. 생성자를 통해 소인수분해 할 숫자를 전달받는다.

    init(_ target: Int)

다음 프로퍼티를 구현한다. 

    var toArray: [Int]

소인수들을 배열로 반환한다.

## Caution

반환되는 소인수들은 오름차순으로 정렬되어야 한다.

## Source

    class PrimeFactors {

        var target: Int

        var toArray: [Int] {
            get {
                /* write your code here */
            }
        }

        init(_ target: Int) {
            self.target = target
        }
    }
