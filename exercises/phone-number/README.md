## Phone Number

전화번호에 대해 다음 규칙들에 따라 검사를 하는 클래스를 작성하라.

규칙은 다음과 같다:

- 전화번호가 10자리 미만이라면 잘못된 번호이다.
- 전화번호가 10자리라면 올바른 번호이다.
- 전화번호가 11자리이고 첫번째 숫자가 1이라면, 1을 버리고 나머지 10자리를 이용한다.
- 전화번호가 11자리이고 첫번째 숫자가 1이 아니라면, 잘못된 번호이다.
- 전화번호가 11자리보다 길다면 잘못된 번호이다.

잘못된 번호라면, 전화번호를 0000000000 으로 만들고, 아니라면 숫자만 남기고 정규화한다.

예를 들어, 

    "21234567890"

는 

    "0000000000"

가 되고,

    "123.456.7890"

는

    "1234567890"

가 된다.

## Structure

PhoneNumber 클래스를 작성한다. 생성자를 통해 검사할 번호를 문자열로 전달받는다.

    init(_ number: String) 

다음 프로퍼티를 구현한다.

    var number: String

검사 후 변환된 번호를 문자열로 반환한다.

## Source

    class PhoneNumber {

        var originalNumber: String

        var number: String {
            get {
                /* write your code here */
            }
        }

        init(_ number: String) {
            self.originalNumber = number
        }
    }
