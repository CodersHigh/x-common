# Gigasecond

Gigasecond 는 10^9 초를 의미한다.

어떤 시점이 주어질 때, 그 시점으로부터 Gigasecond 이후의 시점을 계산하는 클래스를 작성하라.

예를 들어, 

    2011-04-25T00:00:00

라는 시점이 주어지면, Gigasecond 이후는

    2043-01-01T01:46:40

가 된다.

## Structure

Gigasecond 클래스를 작성한다. 생성자를 통해 기준이 될 시점을 문자열로 전달받는다.

    init?(from: String)

다음 프로퍼티를 구현한다.

    var description: String

기준시점으로부터 Gigasecond 이후의 시간을 계산하여 문자열로 반환한다.

## Caution

시간에 관련된 문자열은
    
    yyyy-MM-ddThh:mm:ss

의 포멧을 따른다.

이 포멧을 따르지 않는 경우, Gigasecond 클래스의 생성자는 객체를 생성하지 않는다.

## Hint

Date 클래스와 DateFormatter 클래스를 이용해 볼 것.

## Source

    class Gigasecond {

        var from: Date

        var description: String {
            get {
                /* write your code here */
            }
        }

        init?(from: String) {
            /* write your code here */
        }
    }
