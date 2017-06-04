# Linked List

Doubly linked list 를 구현하여 보자.

배열과 마찬가지로, linked list 는 간단한 선형 자료 구조이다. 일반적으로 사용되는 몇가지 자료 구조들의 경우에 linked list 를 이용하여 구현될 수 있다. 예를 들면, queue, stack, associative array 등이다.

Linked list 는 node 라고 불리는 단위들의 결합으로 구성된다. Singly linked list 의 경우에는, 각각의 node 가 하나의 값을 저장하고, 다음 순번 node 로의 link 를 가지고 있다.

반면 우리가 구현할 doubly linked list 는 singly linked list 와 같지만 각 node 들이 앞선 순번의 node 로의 link 또한 가지고 있다.

    Singly linked list
    node  ->  node  ->  node

    Doubly linked list
    node <->  node <->  node

다음 4가지 기능을 수행할 수 있는 Doubly linked list 클래스를 구현하라.

* push : list 의 가장 끝에 값을 추가
* pop : list 의 가장 마지막 값을 반환하고 제거
* shift : list 의 가장 첫번째 값을 반환하고 제거
* unshift : list 의 가장 앞에 값을 추가

## Structure

Deque 클래스를 작성하라. Generic 을 이용하여 linked list 에 저장할 데이터의 자료형을 결정한다.

    class Deque<T>

다음 함수들을 작성하라.

    func push(_ value: T)

list 의 가장 끝에 node 를 추가한다.

    func pop() -> T

list 의 가장 마지막 node 의 값을 반환하고 node 를 제거한다.

    func shift(_ value: T)

list 의 가장 첫번째 node 의 값을 반환하고 node 를 제거한다.

    func unshift() -> T 

list 의 가장 앞에 node 를 추가한다.

Node 를 표현하기 위해 Node 클래스를 작성하여 이용한다. 데이터 값을 저장하고, 앞 뒤 다른 node 로의 link 를 저장할 수 있다.

## Source

    class Deque<T> {

        var headNode: Node<T>?

        func push(_ value: T) {
            /* write your code here */
        }

        func pop() -> T {
            /* write your code here */
        }

        func shift(_ value: T) {
            /* write your code here */
        }

        func unshift() -> T {
            /* write your code here */
        }
    }

    struct Node<T> {
        var value: T
        var next: Node<T>?
        var prev: Node<T>?

        /* write your code here */
    }
