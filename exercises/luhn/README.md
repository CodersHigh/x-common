# Luhn

Luhn 알고리즘은 사회 보장 번호나 신용카드 번호 등 여러가지 개인 식별 번호들을 검사하기 위해 이용된다. 주어지는 번호들의 문자열이 유효한 번호인지 아닌지를 판별해 낸다.

이 알고리즘을 이용하기 위해서는 문자열의 길이가 반드시 1보다는 커야 한다. 문자열에 공백이 들어갈 수는 있지만 검사 전에 모두 제거해야 한다. 숫자가 아닌 다른 모든 문자들은 허용되지 않는다.

신용카드 번호를 검사하는 경우를 예로 들어 보자.

    4539 1488 0343 6467 

오른쪽에서부터 세었을 때, 짝수 번째에 있는 숫자들을 고른다.

    4_3_ 1_8_ 0_4_ 6_6_

이 숫자들을 2배로 한다. 이때, 2배를 한 숫자가 9보다 크다면, 2배 한 수에서 9를 뺀다. 그러면 이와 같이 될 것이다.

    8569 2478 0383 3437

이제 모든 수들을 더한다. 이 숫자를 checksum 이라고 한다.

    8+5+6+9+2+4+7+8+0+3+8+3+3+4+3+7 = 80

checksum 이 10의 배수이므로, Luhn algorithm 을 이용한 검사를 통과하였다.

반면 카드 번호가

    8273 1232 7352 0569

와 같다면, 

    7253 2262 5312 0539
    7+2+5+3+2+2+6+2+5+3+1+2+0+5+3+9 = 57

가 된다. checksum 이 10의 배수가 아니므로 검사를 통과하지 못한다.

Luhn algorithm 에 따라 주어진 숫자들의 문자열을 검사하는 클래스를 작성하라.

## Structure

Luhn 클래스를 작성한다. 생성자를 통해 검사할 숫자를 전달받는다.

다음 프로퍼티들을 작성한다.

    var addends: [Int]

주어진 숫자에서 오른쪽에서부터 짝수번째에 있는 숫자들을 2배로 하여, 배열로 만들어 반환한다. 2배를 한 숫자가 9보다 크면 9를 뺀다. 
예를 들어, 12_121 이라는 숫자에 대해서는 [1, 4, 1, 4, 1] 을 반환해야 한다.

    var checksum: Int

주어진 숫자에 대해 checksum 을 계산하여 반환한다.

    var isValid: Bool

Luhn algorithm 검사를 통과했는지 여부를 반환한다. 통과하면 true, 그렇지 않으면 false 를 반환한다.

    class func create(_ target: Int) -> Int 

target 으로 전달받는 숫자가 Luhn algorithm 검사를 통과할 수 있도록 가장 끝에 하나의 숫자를 덧붙여 반환한다.

## Source

    class Luhn {

        var target: Int

        var addends: [Int] {
            get {
                /* write your code here */
            }
        }

        var checksum: Int {
            get {
                /* write your code here */
            }
        }

        var isValid: Bool {
            get {
                /* write your code here */
            }
        }

        init(_ target: Int) {
            self.target = target
        }

        class func create(_ target: Int) -> Int {
            /* write your code here */
        }
    }
