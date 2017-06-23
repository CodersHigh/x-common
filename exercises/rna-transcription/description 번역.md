#RNA Transcription

DNA와 RNA가닥은 모두 뉴클레오타이드로 구성되어 있다.

DNA는 다음 4가지 뉴클레오타이드로 구성된다. 
    - 아데닌 (A), 시토신 (C), 구아닌 (G), 티민 (T).

RNA는 다음 4가지 뉴클레오타이드로 구성됩니다. 
    - 아데닌 (A), 시토신 (C), 구아닌 (G), 우라실 (U).

DNA 가닥이 주어지면, 이는 유전자 복사를 위해 RNA 로 전사된다.
전사된 RNA 가닥은 원래의 DNA에 존재하던 각 뉴클레오타이드를 아래와 같이 치환한다.

* `G` -> `C`
* `C` -> `G`
* `T` -> `A`
* `A` -> `U`

주어진 DNA 염기서열에 대하여, 전사된 RNA 염기서열을 반환할 수 있는 클래스를 작성하라.

예를 들어, 주어진 DNA 염기서열

    'ACGTGG'

는

    'UGCACC'

의 RNA 염기서열로 변환된다.

## Structure

Nucleotide 클래스를 작성하라. 생성자를 통해 DNA 염기서열을 문자열로 전달받는다.

    init(_ dna: String)

다음 프로퍼티를 작성한다.

    var complementOfRNA: String

전사된 RNA 염기서열을 문자열로 반환한다.

## Source

    class Nucleotide {

        var dna: String

        var complementOfRNA: String {
            get {
                /* write your code here */
            }
        }

        init(_ dna: String) {
            self.dna = dna
        }
    }
