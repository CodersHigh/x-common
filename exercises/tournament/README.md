# Tournament

미식축구 경기 결과를 기록하는 프로그램을 작성한다. 

어떤 팀이 어떤 팀과 대항해 결과가 어떻게 되었는지에 대한 정보가 담긴 파일에 기반해, 프로그램은 다음과 같은 표를 가지는 파일을 만든다.

    Team                           | MP |  W |  D |  L |  P
    Devastating Donkeys            |  3 |  2 |  1 |  0 |  7
    Allegoric Alaskans             |  3 |  2 |  0 |  1 |  6
    Blithering Badgers             |  3 |  1 |  0 |  2 |  3
    Courageous Californians        |  3 |  0 |  1 |  2 |  1

위에서 쓰인 약자 참조

- MP: 총 경기 수 (Matches Played)
- W: 이긴 경기 수 (Won)
- D: 비긴 경기 수 (Drawn)
- L: 진 경기 수 (Lost)
- P: 점수 (Points)

경기에서 이기면 3점을 얻고, 비기면 1점, 지면 0점을 얻는다.

결과는 점수에 따라 내림차순으로 나열된다. 점수가 같으면 알파벳 순서로 팀을 나열한다.

위와 같은 형태의 파일을 만들기 위해, 프로그램은 아래와 같은 형태의 입력 파일을 받는다.

    Allegoric Alaskans;Blithering Badgers;win
    Devastating Donkeys;Courageous Californians;draw
    Devastating Donkeys;Allegoric Alaskans;win
    Courageous Californians;Blithering Badgers;loss
    Blithering Badgers;Devastating Donkeys;loss
    Allegoric Alaskans;Courageous Californians;win

표시된 경기 결과는 첫 번째로 쓰여진 팀에게 해당하는 결과이다.

    Allegoric Alaskans;Blithering Badgers;win

위 줄(line)은 Allegoric Alaskans 팀이 Blithering Badgers를 이겼다는 것을 의미한다.

    Courageous Californians;Blithering Badgers;loss

위 줄은 Blithering Badgers가 Courageous Californians를 이겼다는 것을 의미한다.

    Devastating Donkeys;Courageous Californians;draw

위 줄은 Devastating Donkeys와 Courageous Californians가 비겼다는 것을 의미한다.

프로그램은 이 입력 포멧을 정확히 따르는 줄들에 대해서만 작동해야 한다. 이 포멧을 따르지 않는 줄에 대해서는 작동하지 않는다.

## Structure

Tournament 클래스를 작성한다. 

다음 함수를 작성한다.

    func tally(_ input: String) -> String

주어진 조건에 따라, input 의 내용을 표 형태로 정리하여 문자열로 반환한다.

## Source

    class Tournament {

        func tally(_ input: String) -> String {
            /* write your code here */
        }
    }
