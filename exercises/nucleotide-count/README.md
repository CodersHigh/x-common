# Nucleotide Counts

DNA는 다음 주어진 네 개의 알파벳 기호들로 표현된다.

    'A', 'C', 'G', 'T'

각 기호는 뉴클레오타이드를 나타내며, 이것은 DNA의 많은 부분을 차지하는 특정 분자들의 명칭이다.

DNA는 4종류의 뉴클레오타이드를 포함한다: 아데닌(`A`), 시토닌(`C`), 구아닌(`G`), 그리고 티민(`T`)


주어진 염기서열에 대하여, DNA를 구성하는 4종류의 뉴클레오타이드가 각각 몇 번 출현하는지 계산할 수 있는 클래스를 작성하라.

예를 들어,

    'GGTATC'

로 염기서열이 주어지면

    'A': 1, 'C': 1, 'G': 2, 'T': 2

가 된다.

## Structure

DNA 클래스를 작성한다. 생성자를 통해 염기서열을 문자열로 전달받는다.

    init?(strand: String)

다음 함수들을 작성한다.

    func count(_ nucleotide: String) -> Int

특정 뉴클레오타이드의 개수를 세어 반환한다.

    func counts() -> [String: Int]

염기서열에서 각 뉴클레오타이드에 대한 개수를 Dictionary 형태로 반환한다.

## Caution

네 종류의 뉴클레오타이드 이외의 글자가 포함된 문자열을 전달받으면 생성자는 nil 을 반환한다.

## Source

    class DNA {

        var strand: String

        init?(strand: String){
            /* write your code here */
            self.strand = strand
        }

        func count(_ nucleotide: String) -> Int {
            /* write your code here */
        }

        func counts() -> Int {
            /* write your code here */
        }
    }
