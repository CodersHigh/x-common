# Isogram

Isogram 이란, 하나의 단어 혹은 구에서 반복되는 글자가 하나도 없는 것을 말한다.

예를 들어,

* lumberjacks
* background
* downstream
* great job

와 같은 문자열들은 isogram 이다.

그러나

* isograms

는 s 가 반복되므로 isogram 이 아니다.

주어진 문자열에 대하여, isogram 인지 아닌지를 판별할 수 있는 클래스를 작성하라.

## Structure

Isogram 클래스를 작성한다.

다음 함수를 작성한다.

    class func isIsogram(_ target: String) -> Bool

target 으로 전달받은 문자열이 isogram 이면 true, 아니면 false 를 반환한다.

## Caution

하이픈 (-) 은 띄어쓰기와 같은 것으로 본다.

## Source

    class Isogram {
        class func isIsogram(_ target: String) -> Bool {
            /* write your code here */
        }
    }
