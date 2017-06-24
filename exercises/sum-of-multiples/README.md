# Sum of Multiples

20 미만의 모든 자연수에서 3이나 5의 배수를 나열하면, 3, 5, 6, 9, 10, 12, 15, 18이 나온다.

이 배수들의 합은 78이다.

이와 같이, 주어진 범위에서 주어진 숫자의 배수들로 나열된 숫자들의 합을 구하는 클래스를 작성하라.

## Structure

SumOfMultiples 클래스를 작성한다.

다음 함수들을 작성한다.

    class func toLimit(_ bound: Int) -> Int

bound 미만의 숫자들 중 3과 5의 배수들을 모두 더해 반환한다.

    class func toLimit(_ bound: Int, inMultiples: [Int]) -> Int

bound 미만의 숫자들 중 inMultiples 에 포함된 숫자들의 배수들을 모두 더해 반환한다.

## Caution

배수들을 더할 때, 공배수가 존재할 경우 중복으로 더하지 않는다. 예를 들어 3과 5의 공배수 15의 경우, 전체 결과값에 한번만 더해진다.

## Source

    class SumOfMultiples {

        class func toLimit(_ bound: Int) -> Int {
            /* write your code here */
        }

        class func toLimit(_ bound: Int, inMultiples: [Int]) -> Int {
            /* write your code here */
        }
    }
