# Clock

날짜는 표시하지 않는, 시간과 분만 표시하는 시계를 만든다.

기본 시간은 0시 0분이고, 시간과 분을 각각 더하고 뺄 수 있다. 

예를 들어 11시간 9분을 더하면 11:09, 25시간을 더하면 01:00, 72시간 8640분을 더하면 00:00 이 된다.

이와 같이 더하거나 빼진 시간과 분에 대해 시각을 표시해주는 시계 클래스를 작성하라.

## Structure

Clock 클래스를 작성한다. 생성자를 통해 더할 시간과 분을 전달받는다.

    init(hours: Int)
    init(hours: Int, minutes: Int)

분을 전달받지 않는 경우는 분을 0으로 간주한다.

다음 프로퍼티를 작성한다.

    var description: String

계산한 시간을 hh:mm 형태의 문자열로 반환한다.

다음 함수들을 작성한다.

    func add(minutes: Int)

현재 시간에서 주어진 분 만큼을 더한다.

    func subtract(minutes: Int)

현재 시간에서 주어진 분 만큼을 뺀다.

Comparable 프로토콜을 이용하여, 서로 다른 두 Clock 객체를 비교 연산자로 비교할 수 있어야 한다.

## Source

    class Clock: CustomStringConvertable, Compareable {

        var hours: Int
        var minutes: Int

        var description: String {
            get {
                /* write your code here */
            }
        }

        init(hours: Int) {
            self.hours = hours
            self.minutes = 0
        }

        init(hours: Int, minutes: Int) {
            self.hours = hours
            self.minutes = minutes
        }

        func add(minutes: Int) {
            /* write your code here */
        }

        func subtract(minutes: Int) {
            /* write your code here */
        }
    }
    
    func ==(lhs: Clock, rhs: Clock) -> Bool {
        /* write your code here */
    }

    func <(lhs: Clock, rhs: Clock) -> Bool {
        /* write your code here */
    }
