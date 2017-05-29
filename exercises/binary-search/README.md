# Binary Search

Binary Search 알고리즘을 구현해 보자.

일반적으로, 우리는 데이터가 순서대로 정렬되어 있는 collection 에서 무언가를 검색한다. 예를 들어, 사전은 단어들이 순서대로 정렬되어 있고, 전화번호부는 이름, 주소, 전화번호 등이 순서대로 정렬되어 있다. 순서대로 정렬되어 있으면 우리는 표제어를 아는 것만으로 원하는 정보를 빠르게 찾아낼 수 있다.

만약 정렬되어 있는 collection 의 길이가 꽤 긴 경우에, 처음부터 끝까지 순서대로 찾아보는 linear search 보다 binary search 가 일반적으로 더 빠를 수 있다.

Binary search 혹은 half-interval search 알고리즘은 정렬되어 있는 배열 안에서 주어진 key 의 위치를 찾아낸다.

Binary search 알고리즘은 다음과 같이 동작한다.

먼저 주어진 배열의 가운데에 있는 값을 잡는다. 그 값과 key 를 비교한다. 그 값이 key 와 같다면 위치를 찾은 것이고, 그렇지 않다면 key 가 그 값보다 큰지 작은지를 비교한다. 배열이 오름차순일 때, key 가 더 크다면 그 값의 오른쪽, 작으면 왼쪽에 있는 요소들의 부분배열을 상대로 해당 알고리즘을 반복한다.

예를 들어 배열 [1, 3, 4, 6, 8, 9, 11] 에서 4를 검색해 보자.

먼저 가운데에 있는 요소, 6을 잡는다. key 인 4가 6보다 작으므로 왼쪽의 부분배열, 즉 [1, 3, 4] 에 대해 다시 가운데 요소 3을 잡는다. 4는 3보다 크므로 이번에는 오른쪽의 부분배열 [4] 에 대해 가운데 요소 4를 잡는다. 4는 4와 같으므로 위치를 발견하였다.

Binary search 알고리즘을 이용하여, 주어진 배열에서 주어진 key 의 위치를 검색하는 클래스를 작성하라.

## Structure

BinarySearch 클래스를 작성한다. 생성자를 통해 검색의 대상이 될 배열을 전달받는다. 

다음 프로퍼티를 구현한다.

```
var middle: Int
```

검색 대상 배열 길이를 2로 나눈 값을 반환한다.

또한 다음 함수를 구현한다.

```
func searchFor(_ target:Int) -> Int
```

target 으로는 검색할 숫자를 전달받고, 검색한 숫자의 index 를 반환한다.

## Caution

생성자를 통해 전달받은 배열이 정렬되어 있지 않은 경우, BinarySearchError 를 throw 해야 한다.

## Source

```
class BinarySearch {

    var searchArray: [Int]

    var middle: Int {
        get {
            /* write your code here */
        }
    }

    init(_ array:[Int]) throws {
        /* write your code here */

        self.searchArray = array
    }

    func searchFor(_ target:Int) -> Int {
        /* write your code here */
    }
}

enum BinarySearchError: Error {
    case unsorted
}
```
