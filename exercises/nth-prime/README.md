# Nth Prime

소수를 구하는 프로그램을 작성해 보자.

예를 들어, 처음 6개의 소수를 나열해 보면

    2, 3, 5, 7, 11, 13

이고, 6번째 소수가 13임을 알 수 있다. 

N 번째 소수를 구하는 클래스를 작성하라.

## Structure

Prime 클래스를 작성한다.

다음 함수를 작성한다.

    class func nth(_ N: Int) -> Int

N 번째 소수를 구하여 반환한다.

## Caution

0번째 소수란 존재하지 않으므로, nil 을 반환한다.

1,000,000 보다 작은 소수만 구한다.

## Source

    class Prime {

        class func nth(_ N: Int) -> Int {
            /* write your code here */
        }

    }
