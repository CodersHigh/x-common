# Strain

두 개의 함수를 작성한다. 하나는 함수에서 참인 아이템 목록을 결과로 내고, 다른 하나는 거짓인 아이템 목록을 결과로 낸다.

예를 들어, 다음 숫자들 모임이 주어졌을 때

- 1, 2, 3, 4, 5

다음을 선언했다면

- 숫자는 짝수인가?

함수 keep은 다음을 반환한다.

- 2, 4

반면 함수 discard는 다음을 만들어낸다.

- 1, 3, 5

keep의 결과와 discard의 결과를 합하면 기존 모든 원소들이 된다.

## Structure

Array 의 extionsion 을 작성한다.

다음 함수들을 작성한다.

    func keep(_ operation: (Element) -> Bool) -> [Element]

operation 을 전달받아, operation 의 조건에 맞는 요소들을 배열로 만들어 반환한다.

    func discard(_ operation: (Element) -> Bool) -> [Element]

operation 을 전달받아, operation 의 조건에 맞지 않는 요소들을 배열로 만들어 반환한다.

## Caution

filter 함수를 이용하지 말 것.

## Source

    extionsion Array {

        func keep(_ operation: (Element) -> Bool) -> [Element] {
            /* write your code here */
        }

        func discard(_ operation: (Element) -> Bool) -> [Element] {
            /* write your code here */
        }
    }
