# Difference Of Squares

어떤 자연수 N 이 주어졌을 때, '제곱의 합' 은 1부터 N까지 모든 숫자들을 각각 제곱하여 더한 것을 의미하고, '합의 제곱' 은 1부터 N까지 모든 숫자들을 더하여 그것을 제곱한 것을 의미한다.

예를 들어, 10의 '제곱의 합' 은

```
1² + 2² + ... + 10² = 385
```

이고, 10의 '합의 제곱' 은

```
(1 + 2 + ... + 10)² = 55² = 3025
```

이다.

어떤 자연수 N 이 주어질 때, 그 숫자에 대한 '합의 제곱', '제곱의 합', 그리고 '합의 제곱' - '제곱의 합' 의 값을 구할 수 있는 클래스를 작성하라.

## Structure

Squares 클래스를 작성한다. 생성자를 통해 자연수 N 의 값을 전달받는다.

다음 프로퍼티들을 구현한다.

```
var squareOfSums: Int
```

N 의 '합의 제곱' 을 반환한다.

```
var sumOfSquares: Int 
```

N 의 '제곱의 합' 을 반환한다.

```
var differenceOfSquares: Int
```

N 에 대해 '합의 제곱' - '제곱의 합' 의 값을 반환한다.

## Source

```
class Squares {

    var N: Int

    var squareOfSums: Int {
        get {
            /* write your code here */
        }
    }

    var sumOfSquares: Int {
        get {
            /* write your code here */
        }
    }

    var differenceOfSquares: Int {
        get {
            /* write your code here */
        }
    }

    init(_ N: Int) {
        self.N = N
    }
}
```
