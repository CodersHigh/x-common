# Allergies

8가지 아이템에 대한 알레르기 점수가 주어진다.

* 달걀 (1)
* 땅콩 (2)
* 조개류 (4)
* 딸기 (8)
* 토마토 (16)
* 초콜릿 (32)
* 꽃가루 (64)
* 고양이 (128)

이때, 어떤 사람의 알레르기 점수는, 이 사람이 알레르기가 있는 아이템들의 점수를 모두 더한 값이다.
예를 들어, 이 사람이 땅콩과 초콜렛에 알레르기가 있다면 이 사람의 알레르기 점수는 34점이다.

이제, 어떤 사람의 알레르기 점수만 알고 있다고 하자.
그렇다면 거꾸로 그 점수를 통해 어떤 아이템들에 알레르기가 있는지를 알아낼 수 있다.

예를 들어 어떤 사람의 알레르기 점수가 7점이라면, 가능한 경우의 수는 1 + 2 + 4, 즉 달걀과 땅콩과 조개류 뿐이다.
즉 이 사람은 달걀과 땅콩과 조개류에 알레르기가 있다.

어떤 사람의 알레르기 점수를 통해 어떤 아이템에 알레르기가 있는지 알아내고,
주어진 아이템에 대해 알레르기가 있는지 없는지를 판별하는 함수를 작성하라.

## Setup

Go through the project setup instructions for Xcode using Swift:

http://exercism.io/languages/swift

## Source

Jumpstart Lab Warm-up [http://jumpstartlab.com](http://jumpstartlab.com)

## Submitting Incomplete Problems
It's possible to submit an incomplete solution so you can see how others have completed the exercise.

