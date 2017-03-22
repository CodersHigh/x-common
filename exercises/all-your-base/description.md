general base conversion을 시행하세요. 숫자열 **a** 의 base가 주어질 때,
 이것을 **b** base 로 바꾸세요.
Implement general base conversion. Given a number in base **a**,
represented as a sequence of digits, convert it to base **b**.

## Note
- 여러분 스스로 변환하는 방법을 만들어 보세요.
  여러분의 변환 방법을 만들기 위해 기존에 다른 방법을 사용하지 마세요.
  Try to implement the conversion yourself.
  Do not use something else to perform the conversion for you.

## 관련자료 About [Positional Notation(자리 표기법)](https://en.wikipedia.org/wiki/Positional_notation)

숫자 **b** 를 자리 표기법으로 나타낸다는 말은 숫자 **b** 를 거듭제곱의 조합 형태로 만든 것입니다.
In positional notation, a number in base **b** can be understood as a linear
combination of powers of **b**.

예를들어 숫자 42의 *base 가 10* 이라면 이것은 다음과 같습니다.
The number 42, *in base 10*, means:

(4 * 10^1) + (2 * 10^0)

숫자 101010 의 *base 가 2* 라면 이것은 다음과 같습니다.
The number 101010, *in base 2*, means:

(1 * 2^5) + (0 * 2^4) + (1 * 2^3) + (0 * 2^2) + (1 * 2^1) + (0 * 2^0)

숫자 1120 의 *base 가 3* 이라면 이것은 다음과 같습니다.
The number 1120, *in base 3*, means:

(1 * 3^3) + (1 * 3^2) + (2 * 3^1) + (0 * 3^0)

이제 이해하셨나요?
I think you got the idea!

*눈치 채셨나요? 위의 예시로 주어진 세개의 숫자는 모두 같답니다!* 
*Yes. Those three numbers above are exactly the same. Congratulations!*
