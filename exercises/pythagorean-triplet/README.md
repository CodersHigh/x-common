## Pythagorean Triplet

피타고라스는 직각삼각형의 밑변의 길이 a, 높이 b, 빗변의 길이 c 에 대해 다음 관계가 성립함을 보였다.

    a^2 + b^2 = c^2

피타고라스 삼각수 Pythagorean triplet 는 이 식을 만족하는 세 개 정수의 순서쌍 (a, b, c) 를 말한다.

세 수의 순서쌍이 주어질 때, 이가 피타고라스 삼각수인지 여부를 판단할 수 있는 클래스를 작성하라.

## Structure

Triplet 클래스를 작성한다. 생성자를 통해 세 정수를 전달받는다.

    init(_ a: Int, _ b: Int, _ c: Int)

다음 프로퍼티들을 작성한다.

    var sum: Int

세 수의 합을 반환한다.

    var product: Int

세 수의 곱을 반환한다.

    var isPythagorean: Bool

세 수의 순서쌍이 피타고라스 삼각수인지의 여부를 반환한다.

다음 함수를 작성한다.

    class func Where(_ min: Int = 1, maxFactor: Int, sum: Int? = nil) -> [Triplet]

세 정수의 범위의 최솟값 min, 최댓값 maxFactor, 세 정수의 합 sum 을 전달받아, 그 조건에 맞는 피타고라스 삼각수들을 모두 찾아 배열로 반환한다.

## Source

    class Triplet {

        var a: Int
        var b: Int
        var c: Int

        init(_ a: Int, _ b: Int, _ c: Int) {
            self.a = a
            self.b = b
            self.c = c
        }

        var sum: Int {
            get {
                /* write your code here */
            }
        }

        var product: Int {
            get {
                /* write your code here */
            }
        }

        class func Where(_ min: Int = 1, maxFactor: Int, sum: Int? = nil) -> [Triplet] {
            /* write your code here */
        }
    }
