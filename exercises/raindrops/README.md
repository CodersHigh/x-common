# Raindrops

어떤 수가 하나 주어질 때, 그 수에 대해 다음 작업을 수행하는 클래스를 작성하라.

- 어떤 수가 3을 약수로 갖는다면, 'Pling'을 출력.
- 어떤 수가 5를 약수로 갖는다면, 'Plang'을 출력.
- 어떤 수가 7을 약수로 갖는다면, 'Plong'을 출력.
- 어떤 수의 약수 중 3, 5, 혹은 7이 없다면, 그 수 자체를 출력.

예를 들어, 15에 대하여는 'PlingPlong', 21에 대하여는 'PlingPlong' 을 반환한다.

## Structure

Raindrops 클래스를 작성한다. 생성자로 대상이 되는 수를 전달받는다.

    init(_ target: Int)

다음 프로퍼티를 구현한다.

    var sounds: String

앞서 주어진 조건에 따라 문자열을 반환한다.

## Source

    class Raindrops {

        var target: Int

        var sounds: String {
            get {
                /* write your code here */
            }
        }

        init(_ target: Int) {
            self.target = target
        }
    }
