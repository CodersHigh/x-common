연결 리스트는 컴퓨터 과학에서 사용하는 기본적인 데이터 구조로, 다른 데이터 구조를 구성할 때 사용되곤 합니다. Clojure, Erlang, Haskell과 같은 함수형 프로그래밍 언어에 보금되었지만, Ruby와 Python과 같은 중요한 언어에서는 그렇게 자주 쓰이진 않습니다. 

연결 리스트의 가장 간단한 형태는 단순 연결 리스트입니다. 리스트 안의 각 연결 요소는 데이터와 다음 요소를 가리키는 영역을 가지고 있습니다. 
The simplest kind of linked list is a singly linked list. Each element in the
list contains data and a "next" field pointing to the next element in the list
of elements.

이러한 여러 연결 리스트는 sequence나 push-down stack을 표현할 때 종종 사용됩니다. (Last In, First Out stack이라고도 불림)

As a first take, lets create a singly linked list to contain the range (1..10),
and provide functions to reverse a linked list and convert to and from arrays.

When implementing this in a language with built-in linked lists,
implement your own abstract data type.
