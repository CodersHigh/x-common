# Word count

단어 수를 세자. 예를 들어 다음과 같은 입력값이 있다면

 `"olly olly in come free"`

다음과 같은 출력값을 가지면 된다.

```plain
olly: 2
in: 1
come: 1
free: 1
```
## Structure

WordCount 클래스를 작성한다. 생성자를 통해 단어의 수를 셀 문자열을 전달받는다.

    init(words: String)

다음 함수를 작성한다.

    func count() -> [String: Int]

각 단어들마다의 개수를 세어 Dictionary 로 반환한다.

## Caution

모든 대문자는 소문자로 바꾼다.
문자열에 특수문자가 포함되어 있다면 무시한다.

## Hint

String 클래스의 component(separatedBy:) 함수를 이용해볼 것.
String 클래스의 lowercased() 함수를 이용해볼 것.

## Source

    class WordCount {
        var words: String
    
        init(words: String) {
            self.words = words
        }
    
        func count() -> [String: Int] {
            /* write your code here */
        }
    }
