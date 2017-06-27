# Custom Set

사용자 정의 집합(Set) 자료형을 만들어 보자.

어떤 집합이 주어졌을 때, 다음과 같은 연산들을 수행할 수 있는 클래스를 작성하라.

1. 집합 요소 삭제
2. 다른 집합과의 합집합, 차집합, 교집합 연산
3. 다른 집합과의 교집합이 공집합인지의 여부 판단
4. 집합 요소 검색
5. 집합 요소 삽입
6. 집합 크기 계산
7. 다른 집합이 부분집합인지의 여부 판단
8. 집합 요소들을 오름차순으로 정렬된 배열로 반환

## Caution

집합 자료형이므로, 중복된 요소는 2개 이상 들어갈 수 없다.

요소의 순서에 상관없는 자료형이어야 한다. 즉, 순서에 상관없이 같은 요소들을 포함하고 있다면 같은 집합이다.

## Structure

CustomSet 클래스를 작성한다. 생성자를 통해 집합의 요소들을 배열로 전달받는다.

    init(_ items: [T])

다음 프로퍼티들을 작성한다.

    var size: Int

집합의 요소들의 개수를 반환한다.

    var toSortedArray: [T]

집합 요소들을 오름차순으로 정렬된 배열로 반환한다.

다음 함수들을 각각 작성한다.

    func difference(_ target: CustomSet<T>) -> CustomSet<T>

전달받은 집합의 요소들을 제외한 차집합을 반환한다.

    func isDisjoint(_ target: CustomSet<T>) -> Bool

전달받은 집합과의 교집합이 공집합인지의 여부를 반환한다.

    func intersection(_ target: CustomSet<T>) -> CustomSet<T>

전달받은 집합과의 교집합을 반환한다.

    func isSupersetOf(_ target: CustomSet<T>) -> Bool

전달받은 집합이 이 집합의 부분집합인지의 여부를 반환한다.

    func union(_ target: CustomSet<T>) -> CustomSet<T>

전달받은 집합과의 합집합을 반환한다.

    func delete(_ item: T)

전달받은 집합 요소를 삭제한다.

    func removeAll()

집합의 모든 요소를 삭제한다.

    func put(_ item: T) 

전달받은 요소를 집합에 추가한다.

    func containsMember(_ item: T) -> Bool

전달받은 요소를 집합이 포함하고 있는지의 여부를 반환한다.

Comparable 프로토콜을 이용하여, 서로 다른 두 CustomSet 객체가 같은지 다른지를 비교할 수 있어야 한다.

## Hint

Set 클래스를 이용해볼 것.

## Source

class CustomSet<T>: NSObject, Comparable {

    init(_ items: [T]) {
        /* write your code here */
    }

    var size: Int {
        /* write your code here */
    }

    var toSortedArray: [T] {
        /* write your code here */
    }

    func put(item: T) {
        /* write your code here */
    }

    func delete(item: T) {
        /* write your code here */
    }

    func removeAll() {
        /* write your code here */
    }

    func containsMember(item: T) -> Bool {
        /* write your code here */
    }

    func difference(otherSet: CustomSet<T>) -> CustomSet<T> {
        /* write your code here */
    }

    func isDisjoint(otherSet: CustomSet<T>) -> Bool {
        /* write your code here */
    }

    func intersection(otherSet: CustomSet<T>) -> CustomSet<T> {
        /* write your code here */
    }

    func isSupersetOf(otherSet: CustomSet<T>) -> Bool {
        /* write your code here */
    }

    func union(otherSet: CustomSet<T>) -> CustomSet<T> {
        /* write your code here */
    }
}
