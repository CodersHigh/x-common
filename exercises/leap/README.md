# Leap

어떤 해가 주어졌을 때, 그 해가 윤년인지 아닌지를 판별할 수 있는 클래스를 작성하라.

우리가 사용하는 그레고리력에서 윤년이란, 다음과 같은 조건을 만족하는 해를 말한다.

    4로 나누어 떨어지는 해.
    단, 400으로 나누어 떨어지지 않으면서 100으로 나누어 떨어지는 해는 제외한다.

## Structure 

Year 클래스를 작성한다. 생성자를 통해 윤년인지 아닌지를 판별할 해를 전달받는다.

    init(calendarYear: Int)

다음 프로퍼티를 작성한다.

    var isLeapYear: Bool

전달받은 해가 윤년인지 아닌지를 반환한다. 윤년이면 true, 아니면 false 를 반환한다.

## Source

    class Year {

        var calendarYear: Int

        var isLeapYear: Bool {
            get {
                /* write your code here */
            }
        }

        init(calendarYear: Int) {
            self.calendarYear = calendarYear
        }
    }
