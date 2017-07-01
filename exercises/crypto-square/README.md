# Crypto Square

Square code 라고 불리는 오래된 암호화 기법이 있다.

영어로 된 문자열을 암호화한다. 

먼저 문자열을 정규화한다. 모든 공백, 특수문자를 제거하고, 모든 글자는 소문자로 바꾼다.

그 다음, 그 문자열을 같은 글자수만큼을 가진 여러 행으로 쪼갠다. 그러면 글자들이 정사각형 모양으로 배치될 것이다.

이때, (행의 수) <= (열의 수), 그리고 (열의 수) - (행의 수) <= 1 를 만족하도록 쪼개져야 한다.

예를 들어 다음과 같은 문자열이 주어졌다고 하자.

    If man was meant to stay on the ground, god would have given us roots.

이를 다음과 같이 정규화한다.

    ifmanwasmeanttostayonthegroundgodwouldhavegivenusroots

이제 이를 여러 행으로 쪼개 정사각형 모양으로 만든다. 주어진 조건에 따르면 행의 수는 7, 열의 수는 8이 되어야 한다. 즉,

    ifmanwas
    meanttos
    tayonthe
    groundgo
    dwouldha
    vegivenu
    sroots

이와 같이 배치된다.

이제 이 사각형에서 가장 왼쪽에 있는 열부터 차례로 써서 아래처럼 만든다.

    imtgdvsfearwermayoogoanouuiontnnlvtwttddesaohghnsseoau

그러면 해당 문자열은 암호화된 것이다.

암호를 다시 해독하기 위해서는 같은 과정을 거치면 된다. 다음과 같이 7글자씩 8조각으로 나눠 정규화하고,

    imtgdvs fearwer mayoogo anouuio ntnnlvt wttddes aohghn sseoau

다시 행의 수는 8, 열의 수는 7인 사각형으로 만든 후

    imtgdvs
    fearwer
    mayoogo
    anouuio
    ntnnlvt
    wttddes
    aohghn
    sseoau

가장 왼쪽 열부터 위에서 아래로 차례대로 읽어 주면 된다.

주어진 문자열을 암호화하고, 또한 다시 복호화하기 위한 정규화를 하는 클래스를 작성하라.

## Structure

Crypto 클래스를 작성한다. 생성자를 통해 대상 문자열을 전달받는다.

    init(_ text: String)

다음 프로퍼티들을 작성한다.

    var normalizePlaintext: String

정규화된 문자열을 반환한다.

    var size: Int

위의 규칙에 따라 글자들을 정사각형으로 배치했을 때 열의 수를 반환한다.

    var plaintextSegments: [String]

위의 규칙에 따라 정사각형으로 배치되어 행들로 쪼개진 문자들을 문자열의 배열로 반환한다.

    var ciphertext: String

암호화된 문자열을 반환한다.

    var nornalizeCiphertext: String

암호 문자열을 정규화하여 반환한다.

## Source 

    class Crypto {

        var text: String

        var normalizePlaintext: String {
            get {
                /* write your code here */
            }
        }

        var size: Int {
            get {
                /* write your code here */
            }
        }

        var plaintextSegments: [String]
        {
            get {
                /* write your code here */
            }
        }

        var ciphertext: String {
            get {
                /* write your code here */
            }
        }

        var nornalizeCiphertext: String {
            get {
                /* write your code here */
            }
        }

        init(_ text: String) {
            self.text = text
        }
    }
