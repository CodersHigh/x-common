# Roman Numerals

로마인들은 다음과 같은 문자들을 이용해 숫자를 적었다.

    I(1), V(5), X(10), L(50), C(100), D(500), M(1000)...

3000보다 큰 숫자는 잘 쓰지 않았다.

예를 들어 1990은 로마 숫자로 MCMXC 이다.

    1000=M
    900=CM
    90=XC

2008 은 로마 숫자로 MMVIII 이다.

    2000=MM
    8=VIII

주어진 숫자를 로마 숫자로 바꾸어 반환할 수 있는 클래스를 작성하라.

## Structure

RomanNumeral 클래스를 작성한다. 생성자를 통해 변환할 숫자를 정수로 전달받는다.

    init(_ decimal: Int)

String 클래스의 생성자를 extionsion 을 이용하여 구현한다.

    init(_ roman: RomanNumeral)

RomanNumeral 클래스를 통해 변환된 로마숫자를 String 객체로 만든다.

## Source 

    class RomanNumeral {

        var decimal: Int

        init(_ decimal: Int) {
            self.decimal = decimal
        }

        func toString() -> String {
            /* write your code here */
        }
    }

    extension String {
        init(_ roman: RomanNumeral) {
            self.init(roman.toString())
        }
    }
