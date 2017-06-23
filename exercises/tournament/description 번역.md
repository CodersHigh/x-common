미식축구 경기 결과를 기록하세요. 어떤 팀이 어떤 팀과 대항해 결과가 어떻게 되었는지에 대한 정보가 담긴 파일에 기반해, 다음과 같은 표를 가지는 파일을 만드세요:

```
팀이름                           | MP |  W |  D |  L |  P
Devastating Donkeys            |  3 |  2 |  1 |  0 |  7
Allegoric Alaskans             |  3 |  2 |  0 |  1 |  6
Blithering Badgers             |  3 |  1 |  0 |  2 |  3
Courageous Californians        |  3 |  0 |  1 |  2 |  1
```

위에서 쓰인 약자 참조

- MP: 총 경기 수 (Matches Played)
- W: 이긴 경기 수 (Won)
- D: 비긴 경기 수 (Drawn)
- L: 진 경기 수 (Lost)
- P: 점수 (Points)

경기에서 이기면 3점을 얻고, 비기면 1점, 지면 0점을 얻습니다.

결과는 점수에 따라 내림차순으로 나열되어야 합니다. 점수가 같으면 알파벳 순서로 팀을 나열하면 됩니다.

###

인풋 파일

만들어야 하는 기록 프로그램은 다음과 같은 인풋 파일을 받게 됩니다:

```
Allegoric Alaskans;Blithering Badgers;win
Devastating Donkeys;Courageous Californians;draw
Devastating Donkeys;Allegoric Alaskans;win
Courageous Californians;Blithering Badgers;loss
Blithering Badgers;Devastating Donkeys;loss
Allegoric Alaskans;Courageous Californians;win
```

표시된 경기 결과는 첫 번째로 쓰여진 팀에게 해당하는 결과입니다. 그러므로 

```
Allegoric Alaskans;Blithering Badgers;win
```

위 줄(line)은 Allegoric Alaskans 팀이 Blithering Badgers를 이겼다는 것을 의미합니다.

```
Courageous Californians;Blithering Badgers;loss
```

위 줄은 Blithering Badgers가 Courageous Californians를 이겼다는 것을 의미합니다.

```
Devastating Donkeys;Courageous Californians;draw
```

위 줄은 Devastating Donkeys와 Courageous Californians가 비겼다는 것을 의미합니다.

프로그램은 이러한 형식을 따르는 인풋 정보에만 작동해야 합니다. 다른 관련 없는 줄(line)은 무시되어야 합니다: 만약 적절한 형식의 줄과 그렇지 않은 줄이 혼용된 인풋 파일을 받게 되더라도, 결과 표는 적절한 혁실의 정보만 받아들여 계산됩니다.