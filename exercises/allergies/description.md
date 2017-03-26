알레르기 테스트는 그 사람이 가지고 있는 모든 알레르기 정보에 대한 점수를 제공합니다.
An allergy test produces a single numeric score which contains the
information about all the allergies the person has (that they were
tested for).

테스트를 위한 아이템(가중치) 항목은 다음과 같습니다.
The list of items (and their value) that were tested are:

* 계란 (1)
* 땅콩 (2)
* 조개류 (4)
* 딸기 (8)
* 토마토 (16)
* 초콜릿 (32)
* 꽃가루 (64)
* 고양이 (128)

* eggs (1)
* peanuts (2)
* shellfish (4)
* strawberries (8)
* tomatoes (16)
* chocolate (32)
* pollen (64)
* cats (128)


따라서 만약 Tom 이 땅콩과 초콜릿에 알레르기가 있다면 그는 34점을 얻을 것입니다.
So if Tom is allergic to peanuts and chocolate, he gets a score of 34.

이 때 우리에게 34점이라는 정보만 주어진다면 여러분의 프로그램은 다음과 같이 제시할 수 있어야 합니다.
Now, given just that score of 34, your program should be able to say:

- 번역 확인 부탁드립니다.
- Tom이 위에 나열된 것들 중 하나에 대해 알레르기 반응을 일으키는지 여부.
- 모든 알레르기 원인 물질은 Tom 에게 알레르기 반응을 일으킨다.

- Whether Tom is allergic to any one of those allergens listed above.
- All the allergens Tom is allergic to.

노트 : 주어진 점수는 아마 위 항목에 **없는** 알레르기 원인 물질을 포함할 수 있습니다. (예를 들면
  256, 512, 1024 등등의 점수를 가진 알레르기 원인 물질) 여러분의 프로그램은 이러한 항목의 점수를 무시해야 합니다.
  예를 들면 알레르기 점수가 257 점이라면, 여러분의 프로그램은 계란(1) 알레르기가 있다고 보고해야 합니다.
Note: a given score may include allergens **not** listed above (i.e.
allergens that score 256, 512, 1024, etc.).  Your program should
ignore those components of the score.  For example, if the allergy
score is 257, your program should only report the eggs (1) allergy.
