# Bob

Bob 은 산만한 10대다. 대화할때 그의 대답은 아주 제한적이다.

그에게 질문을 하면 그는 'Sure.' 이라고만 대답하고, 그에게 소리를 지르면 'Whoa, chill out!' 이라고만 대답한다. 말을 하지 않고 그를 가리키기만 하면 그는 'Fine. Be that way!' 라고 답한다. 그 이외의 어떤 것을 하더라도 그는 'Whatever.' 이라고만 답할 것이다.

주어진 행동에 대해 Bob 의 답을 알려주는 클래스를 작성하라.


## Structure

Bob 클래스를 작성한다.

다음 함수를 작성한다.

    class func hey(_ input: String) -> String

input 으로 전달받은 말에 대해, 주어진 조건에 따라 Bob 이 할 대답을 문자열로 반환한다.

## Caution

* 물음표 (?) 로 끝나는 문장은 질문이다.
* 말에 포함된 모든 알파벳이 대문자인 경우 소리를 지른 것이다.
* 길이가 0인 문장이나, 공백으로만 이뤄진 문장의 경우 아무 말도 하지 않은 것이다.

## Source 

    class Bob {
        class func hey(_ input: String) -> String {
            /* write your code here */
        }
    }
