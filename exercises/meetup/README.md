# Meetup

미팅 날짜를 계산해 보자.

보통 매주마다 같은 날에 미팅을 한다. 그러므로, 이와 같이 미팅 날짜를 설명할 수 있다.

- the first Monday of January 2017
- the third Tuesday of January 2017
- the Wednesteenth of January 2017
- the last Thursday of January 2017

Wednesteenth 는 'Wednesday' + '-teenth' 로 만든 단어이다. 10일 대의 수요일이라는 의미이다. 만약 2017년 1월 의 10일 대, 즉 10일부터 19일 사이에 수요일이 단 하나밖에 없다면, Wednesteenth 라고만 말해도 어떤 날인지 확정할 수 있다.

마찬가지로 Monteenth, Tuesteenth, ..., Sunteenth 라고 표현가능할 수 있다.

미팅 날짜에 대한 설명이 주어졌을 때, 그 날짜를 계산하여 출력할 수 있는 클래스를 작성하라.

## Structure

Meetup 클래스를 작성하라. 생성자를 통해 년, 월을 전달받는다.

    init(year: Int, month: Int)

다음 함수를 작성한다.

    func day(_ dayOfWeek: Int, which: String) -> String

dayOfWeek 로 요일을 전달받는다. 일요일부터 토요일까지 각각 순서대로 1부터 7에 대응한다. which 로는 몇번째 주인지를 전달받는다. 다음 중 하나이다.

* "1st" : 첫번째 주
* "2nd" : 두번째 주
* "3rd" : 세번째 주
* "4th" : 네번째 주
* "last" : 마지막 주
* "teenth" : '-teenth' 로 표현가능한 요일

## Source

    class Meetup {

        var year: Int
        var month: Int

        init(year: Int, month: Int) {
            self.year = year
            self.month = month
        }

        func day(_ dayOfWeek: Int, which: String) -> String {
            /* write your code here */
        }
    }
