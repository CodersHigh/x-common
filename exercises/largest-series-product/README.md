# Largest Series Product

숫자로만 구성된 문자열이 있다고 하자.

여기에서 특정 길이만큼 연속된 숫자들을 곱했을때 최대가 되는 값을 찾는다.

예를 들어

    `1027839564`

라는 문자열에서, 3의 길이만큼 연속된 숫자들의 곱 중 가장 큰 수는 270 (9 * 5 * 6) 이고,<br>
5의 길이만큼 연속된 숫자들의 곱 중 가장 큰 수는 7560 (7 * 8 * 3 * 9 * 5) 이다.

주어진 숫자의 문자열과 연속된 숫자의 길이에 대해, 곱의 최대값을 계산할 수 있는 클래스를 작성하라.

## Structure

NumberSeries 클래스를 작성한다. 생성자로 숫자의 문자열을 전달받는다.

다음 함수를 작성한다.

    func largestProduct(_ length: Int) throws -> Int

연속한 숫자의 길이를 length 로 입력받고, 곱의 최대값을 반환한다.

## Caution 

다음 세 가지 경우에 대해 NumberSeriesError 를 throw 해야 한다.

* 연속된 숫자의 길이가 처음에 주어진 숫자의 문자열보다 더 길때 : spanLongerThanStringLength
* 문자열에 숫자가 아닌 다른 문자가 포함되어 있을 때 : invalidCharacter
* 연속된 숫자의 길이로 음수를 전달받았을 때 : negativeSpan

## Source

    class NumberSeries {
        func largestProduct(_ length: Int) throws -> Int {
            /* write your code here */
        }
    }

    enum NumberSeriesError: Error {
        case spanLongerThanStringLength
        case invalidCharacter
        case nagativeSpan
    }
