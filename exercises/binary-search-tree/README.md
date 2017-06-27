# Binary Search Tree

Binary search tree 를 만들고, 그 안에 숫자를 집어넣고 검색해 보자.

우리가 정렬된 데이터 구조를 이용할 필요가 있을 때, 단순한 배열은 좋은 방법이 아니다.

그 이유는 다음과 같다. 예를 들어 [1, 3, 4, 5] 와 같은 배열이 있다고 하자. 만약 여기에 2를 추가한다면 이 배열은 [1, 3, 4, 5, 2] 가 되므로, 오름차순이 되도록 다시 정렬해주는 과정을 거쳐야만 한다. 이는 매우 비효율적이다.

그러나 binary search tree 구조를 이용한다면, 이 과정을 훨씬 효율적으로 바꿀 수 있다.

Binary search tree 는 node 들의 연결로 구성되어 있다. Node 란 하나의 데이터, 그리고 'left' 와 'right' 라는 변수로 구성된 하나의 객체이다. left 와 right 는 각각 또다른 node 를 저장하거나 비어있을 수도 있다.

이때 제약조건이 있다. left 에 연결되는 node 의 데이터는 자기 자신의 데이터보다 작거나 같아야 하고, right 에 연결되는 node 의 데이터는 더 커야 한다.

예를 들어 보자. 2와 4의 값을 저장하기 위한 binary search tree 는 아래와 같다.

      4
     /
    2

여기에 6을 더해 보자. 4보다 크므로, 4의 right 에 연결된다.

      4
     / \
    2   6

이제 3을 더하는 것을 생각해 보자. 먼저, 4보다는 작으므로 왼쪽으로 간다. 그러나 2보다는 크므로, 2의 right 에 연결된다.

       4
     /   \
    2     6
     \
      3

마찬가지 방법으로 1, 5, 7을 더하면 아래와 같은 구조가 된다.

          4
        /   \
       /     \
      2       6
     / \     / \
    1   3   5   7

Binary search tree 구조에 따라 데이터를 삽입하고 데이터를 찾을 수 있는 클래스를 작성하라.

## Structure

BinarySearchTree 클래스를 작성한다. 생성자를 통해 첫번째 데이터, 즉 head node 의 데이터를 전달받는다.

    init(_ data: Int)

다음 프로퍼티들을 작성한다.

    var data: Int

node 의 데이터를 저장한다.

    var left: BinarySearchTree?

왼쪽 가지로 연결되는 다음 node 를 저장한다.

    var right: BinarySearchTree?

오른쪽 가지로 연결되는 다음 node 를 저장한다.

다음 함수를 구현한다.

    func insert(_ data: Int) 

전달받은 데이터로 새로운 node 를 생성하여 왼쪽 혹은 오른쪽 가지에 연결한다.

## Source 

    class BinarySearchTree {

        var data: Int
        var left: BinarySearchTree?
        var right: BinarySearchTree?

        init(_ data: Int) {
            self.data = data
        }

        func insert(_ data: Int) {
            /* write your code here */
        }
    }
