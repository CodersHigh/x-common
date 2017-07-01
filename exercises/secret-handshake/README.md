# Secret Handshake

세상에는 10 가지 유형의 사람이 있다. 이진법을 이해하는 사람과, 그렇지 못한 사람.

이진법을 이해하고 있는 당신과 동료는 아래의 규칙에 따라 비밀의 "악수"를 만들려고 한다.

    1 = wink
    10 = double blink
    100 = close your eyes
    1000 = jump
    10000 = 비밀 악수의 실행 순서를 거꾸로 한다.

예를 들어, 3을 입력하면, 이진법으로 11이 되기 때문에 "wink", "double blink" 순으로 인사해야 한다. 

19를 입력하면, 이진법으로 10011이 되기 때문에 함수는 배열 "double blink", "wink" 순으로 인사해야 한다.

주어진 수에 대하여, 이를 이진법으로 변환하여 어떻게 인사해야 하는지 순서를 반환할 수 있는 클래스를 작성하라.

## Structure

SecretHandshake 클래스를 작성한다. 생성자를 통해 숫자를 전달한다.

    init(_ decimal: Int)

다음 프로퍼티를 구현한다.

    var command: [String]

인사 순서를 문자열의 배열로 반환한다. 각 문자열은

    "wink", "double blink", "close your eyes", "jump"

중 하나이다.

## Source

    class SecretHandshake {

        var decimal: Int

        var command: [String] {
            get {
                /* write your code here */
            }
        }

        init(_ decimal: Int) {
            self.decimal = decimal
        }
    }
