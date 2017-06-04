# Acronym

긴 문자열을 그 이니셜만 모아 두문자어로 만들어주는 클래스를 작성하라.
예를 들어, 

```
"Portable Network Graphics"
```

는,

```
"PNG"
```

로 바꾸어 준다.

이때 주의할 점은, 하이픈( - ) 으로 연결된 단어도 분리된 것으로 본다.

예를 들어

```
"Water-to-Market"
```

은

```
"WTM"
```

이 된다.

## Structure

Acronym 클래스를 작성한다.

다음 함수를 구현한다.

```
class func abbreviate(_ source:String) -> String
```

source 로 원본 문자열을 전달받고, 두문자어로 축약된 문자열을 반환한다.

## Source

```
class Acronym {
    class func abbreviate(_ source:String) -> String {
        /* write your code here */
    }
}
```
