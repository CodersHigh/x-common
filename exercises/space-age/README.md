# Space Age

지구에 사는 우리는 다음 시간을 이용하여 나이를 센다.

    - 지구: 궤도주기 1년, 혹은 365.25 일, 혹은 31557600 초

그러나 태양계의 다른 행성들은 공전주기가 다르므로 그 행성에서는 1년의 시간이 다르다.
다른 행성과 구분하기 위하여, 지구의 1년을 1 지구년이라고 부르기로 하자.

이를 기준으로 하면, 다른 행성들의 1년은 각각 다음과 같다.

    - 수성 궤도 주기 0.2408467 지구년
    - 금성: 궤도 주기 0.61519726 지구년
    - 화성: 궤도 주기 1.8808158 지구년
    - 목성: 궤도 주기 11.862615 지구년
    - 토성: 궤도 주기 29.447498 지구년
    - 천왕성: 궤도 주기 84.016846 지구년
    - 해왕성: 궤도 주기 164.79132 지구년

누군가가 3,000,000,000 초 살았다고 할 때, 그 사람의 나이는 95 지구년이라고 말할 수 있다.

동시에 이는 3 토성년이기도 하다.

어떤 사람이 살아온 시간이 초로 주어질 때, 각 행성에서의 그 사람의 나이를 계산하는 클래스를 작성하라.

## Structure

SpaceAge 클래스를 작성한다. 생성자를 통해 어떤 사람의 살아온 시간을 초 단위 정수로 전달받는다.

    init(_ ageSec: Int)

다음 프로퍼티들을 작성한다.

    var onEarch: Double
    var onMercury: Double
    var onVenus: Double
    var onMars: Double
    var onJupiter: Double
    var onSaturn: Double
    var onUranus: Double
    var onNeptune: Double

각 행성년을 기준으로 한 나이를 반환한다.

## Source 

    class SpaceAge {

        var ageSec: Int

        var onEarch: Double {
            get {
                /* write your code here */
            }
        }

        var onMercury: Double {
            get {
                /* write your code here */
            }
        }

        var onVenus: Double {
            get {
                /* write your code here */
            }
        }

        var onMars: Double {
            get {
                /* write your code here */
            }
        }

        var onJupiter: Double {
            get {
                /* write your code here */
            }
        }
        var onSaturn: Double {
            get {
                /* write your code here */
            }
        }

        var onUranus: Double {
            get {
                /* write your code here */
            }
        }

        var onNeptune: Double {
            get {
                /* write your code here */
            }
        }

        init(_ ageSec: Int) {
            self.ageSec = ageSec
        }
    }
