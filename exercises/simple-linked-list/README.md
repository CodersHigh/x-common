# Simple Linked List

연결 리스트는 컴퓨터 과학에서 사용하는 기본적인 데이터 구조로, 다른 데이터 구조를 구성할 때 사용된다. 연결 리스트는 Clojure, Erlang, Haskell과 같은 함수형 프로그래밍 언어에 보급되었지만, Ruby와 Python과 같은 중요한 언어에서는 자주 쓰이지 않는다.

연결 리스트의 가장 간단한 형태는 단순 연결 리스트이다. 리스트 안의 각 연결 요소, 즉 node 는 데이터와 다음 요소를 가리키는 영역을 가지고 있다. 

    head -> ... -> node -> node -> node -> ... -> end

단순 연결 리스트를 만들 수 있는 클래스를 작성하라.

## Structure

Element 클래스를 작성한다. 생성자를 통해 데이터와 연결될 다음 node 를 전달받는다.

    init(_ data: T? = nil, _ next: Element<T>? = nil)

다음 프로퍼티들을 작성한다.

    var value: T?

node 의 데이터를 저장한다.

    var next: Element<T>?

다음 node 를 저장한다.

다음 함수들을 작성한다.

    func toArray() -> [T]

이 node 부터 시작하여 단순 연결 리스트의 끝 node 까지의 데이터들을 배열로 만들어 반환한다.

    func reverseElements() -> Element<T>

이 node 부터 시작하여 끝 node 까지의 연결 순서를 반대로 뒤집고, 반대로 뒤집힌 연결 리스트의 head node 를 반환한다.

    class func fromArray(_ values: [T]) -> Element<T>

배열로 주어지는 values 의 값들을 연결 리스트로 만들고, 그 head node 를 반환한다.

## Source

    class Element {

        var value: T?
        var next: Element<T>?

        init(_ data: T? = nil, _ next: element<T>? = nil) {
            self.value = data
            self.next = next
        }

        func toArray() -> [T] {
            /* write your code here */
        }

        func reverseElements() -> Element<T> {
            /* write your code here */
        }

        class func fromArray(_ values: [T]) -> Element<T> {
            /* write your code here */
        }
    }
