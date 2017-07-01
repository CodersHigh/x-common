# Series

문자열 "49142" 에서 연속한 3개의 숫자들을 고를 수 있는 경우는 아래와 같다.

- 491
- 914
- 142

4개를 고르면 아래와 같을 것이다.

- 4914
- 9142

주어진 숫자로 이루어진 문자열에 대해, 주어진 숫자만큼 연속된 숫자들의 배열을 모두 반환할 수 있는 클래스를 작성하라.

만약 문자열의 길이보다 연속된 숫자들의 갯수가 더 크다면, 빈 배열을 반환한다.

## Structure

Series 클래스를 작성한다. 생성자를 통해 숫자의 문자열을 전달받는다.

    init(_ numbers: String)

다음 함수를 작성한다.

    func slices(_ length: Int) -> [[Int]]

length 로 주어진 길이만큼 연속된 숫자들의 배열을 반환한다.

## Source 

    class Series {

        var numbers: String

        init(_ numbers: String) {
            self.numbers = numbers
        }

        func slices(_ length: Int) -> [[Int]] {
            /* write your code here */
        }
    }
