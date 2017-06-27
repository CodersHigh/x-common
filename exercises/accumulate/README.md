# Accumulate

'Accumulate' 기능을 구현한다. collection 데이터들이 주어지고, 그 각 데이터들에 대해 수행될 operation 이 주어진다. 그러면 그 operation 이 적용된 collection 값들의 새로운 collection 을 반환한다.

예를 들어 아래와 같은 숫자들이 input collection 으로 주어졌다고 하자.

```
[1, 2, 3, 4, 5]
```

그리고 아래와 같이 operation 이 주어졌다.

```
func square(number:Int) -> Int {
    return number * number
}
```

그러면 아래와 같은 collection 을 반환하여야 한다.

```
[1, 4, 9, 16, 25]
```

collection 은 배열로서 주어진다.

## Structure

Array 의 extention 을 만들어 아래 함수를 구현한다.

```
func accumulate(_ operation:(Any) -> Any) -> [Any]
```

배열의 각 요소에 대해 operation 함수를 적용한 새로운 배열을 반환한다.

## Source

```
extension Array {
    func accumulate(_ operation:(Any) -> Any) -> [Any] {
        /* write your code here */
    }
}
```
