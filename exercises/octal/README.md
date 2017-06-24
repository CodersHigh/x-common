# Octal

8진수를 10진수로 변환한다. 

주어진 8진수에 대해, 10진수로 변환해 줄 수 있는 클래스를 작성하라.

## Structure

Octal 클래스를 작성한다. 생성자를 통해 변환할 8진수를 문자열로 전달받는다.

    init(_ oct: String)

Int 클래스에 대한 extension 을 구현한다. 
다음 생성자를 구현한다.

    init(_ oct: Octal)

생성자를 통해 Octal 클래스를 전달받고, 10진수로 변환된 결과를 Int 객체로 가진다.

## Caution

8진수가 아닌 형태로 문자열을 입력받은 경우 0을 반한다.

## Source

    class Octal {

        var oct: String

        init(_ oct: String) {
            self.oct = oct
        }

        var toDecimal: Int {
            get {
                /* write your code here */
            }
        }

    }

    extension Int {
        init(_ oct: Octal) {
            self.init(oct.toDecimal)
        }
    }
