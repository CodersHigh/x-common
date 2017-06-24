# Trinary

삼진법은 다음 세 문자로 이루어진다.

    0, 1, 2

삼진법으로 주어지는 숫자를 10진법으로 바꾸어 반환할 수 있는 클래스를 작성하라.

## Structure

Trinary 클래스를 작성한다. 생성자를 통해 삼진법 수를 문자열로 전달받는다.

    init(_ trinary: String)

다음 프로퍼티를 구현한다.

    var toDecimal: Int

십진수로 변환된 수를 정수로 반환한다.

## Source

    class Trinary {

        var trinary: String

        var toDecimal: Int {
            get {
                /* write your code here */
            }
        }

        init(_ trinary: String) {
            self.trinary = trinary
        }
    }
