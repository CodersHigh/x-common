# Hello World

"Hello, World!" 프로그램을 만들어 보자.

    "Hello, World!" 

를 출력하되, 어떤 이름이 주어지면 그 이름에 대해 인사를 하는 클래스를 작성하라. 예를 들어 

    "Bob" 

이라는 이름이 주어지면 

    "Hello, Bob!" 

을 출력한다.

## Structure

HelloWorld 클래스를 작성한다.

다음 함수들을 구현한다.

    class func hello(_ name: String?) -> String 

name 으로 이름을 전달받으면

    "Hello, <name>!"

의 문자열을 반환한다.

    class func hello() -> String 

실행하면 

    "Hello, World!"

의 문자열을 반환한다.

## Source

    class HelloWorld {

        class func hello(_ name: String) -> String {
            /* write your code here */
        }

        class func hello() -> String {
            /* write your code here */
        }
    }
