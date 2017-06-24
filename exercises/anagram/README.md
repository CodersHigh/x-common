# Anagram

어떤 단어에 대해, 그 단어의 글자 순서만 뒤바꿔 만든 다른 단어를 Anagram 이라고 한다.

한 단어가 주어졌을 때, 함께 주어진 다른 단어들의 목록 중 그 단어의 Anagram 들을 찾아 반환하는 클래스를 작성하라.

## Structure

Anagram 클래스를 작성한다. 생성자를 통해 단어를 문자열로 전달받는다.

    init(word: String)

다음 함수를 작성한다.

    func match(_ list: [String]) -> [String]

단어 목록을 전달받아 그 중 anagram 인 단어들을 반환한다.

## Source

    class Anagram {

        var word: String

        init(word: String) {
            self.word = word
        }

        func match(_ list: [String]) -> [String] {
            /* write your code here */
        }
    }
