# Wordy

문장으로 표현된 정수 사칙연산 계산식을 계산할 수 있는 클래스를 작성하라. 

예를 들어 아래와 같이 계산을 수행하여야 한다.

"What is 1 plus 5 minus -2?" -> 8 반환
"What is 2 multiplied by -2 multiplied by 3?" -> -12 반환
"What is 33 divided by -3?" -> -11 반환

## Structure 

WordProblem 클래스를 작성한다. 생성자를 통해 계산식 문장을 문자열로 전달받는다.

    init?(_ formula: String)

다음 함수를 구현한다.

    func answer() -> Int

계산 결과를 정수로 반환한다.

## Caution

계산식 문장의 형태가 주어진 형식과 달라 인식할 수 없다면 생성자는 객체를 생성하지 않는다.

## Source

    class WordProblem {

        var formula: String

        init?(_ formula: String) {
            /* write your code here */
        }

        func answer() -> Int {
            /* write your code here */
        }
    }
