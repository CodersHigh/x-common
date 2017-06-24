# Perfect Numbers

완전수 Perfect Number 는 자기 자신을 제외한 약수들의 합이 자기 자신과 같은 수를 말한다.

부족수 Deficient Number 는 자기 자신을 제외한 약수들의 합이 자기 자신보다 작은 수를 말한다.

충분수 Abundant Number 는 자기 자신을 제외한 약수들의 합이 자기 자신보다 큰 수를 말한다.

주어진 수가 어떤 수에 포함되는지를 판별할 수 있는 클래스를 작성하라.

## Structure

NumberClassifier 클래스를 작성한다. 생성자를 통해 대상 수를 정수로 전달받는다.

    init(number: Int)

다음 프로퍼티를 작성한다.

    var classification: NumberClassification

어떤 수에 포함되는지를 반환한다.

NumberClassification 열거형을 작성한다.

다음 세 가지 요소를 포함하여야 한다.

* Perfect : 완전수
* Deficient : 부족수
* Abundant : 충분수

## Source

    class NumerClassifier {

        var number: Int

        var classification: NumberClassification {
            get {
                /* write your code here */
            }
        }

        init(number: Int) {
            self.number = number
        }
    }

    enum NumberClassification {
        case Perfect
        case Deficient
        case Abundant
    }
