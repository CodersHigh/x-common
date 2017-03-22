[숫자퍼즐](https://en.wikipedia.org/wiki/Alphametics) 은 숫자 대신 문자로 하는 퍼즐입니다.

[Alphametics](https://en.wikipedia.org/wiki/Alphametics) is a puzzle where
letters in words are replaced with numbers.

예를 들면 `SENG + MORE = MONEY` 는 다음과 같이 표현됩니다:
For example `SEND + MORE = MONEY`:

```
  S E N D
  M O R E +
-----------
M O N E Y
```

이것을 숫자로 변환하게 되면 다음과 같습니다:
Replacing these with valid numbers gives:

```
  9 5 6 7
  1 0 8 5 +
-----------
1 0 6 5 2
```

이것은 문자가 서로 다른 숫자로 치환되었고, 치환되어 계산 했을 때 올바른 합이 나오기 때문에
적절합니다.
This is correct because every letter is replaced by a different number and the
words, translated into numbers, then make a valid sum.

각 문자는 반드시 서로 다른 숫자로 표현되어야 하고 두자리 숫자일 경우 첫번째는 0이 올 수 없습니다.
Each letter must represent a different digit, and the leading digit of
a multi-digit number must not be zero.

숫자 퍼즐을 해결하는 함수를 만들어 보세요.
Write a function to solve alphametics puzzles.
