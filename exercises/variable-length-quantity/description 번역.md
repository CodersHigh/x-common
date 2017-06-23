이번 문제의 목표는 [VLQ](https://en.wikipedia.org/wiki/Variable-length_quantity) 인코딩/디코딩을 구현하는 것이다.

짧게 말하면, 인코딩의 목표는 integer 값을 byte로 저장할 수 있도록 변환하는 것이다. 각 byte의 첫 7 bit만이 중요하다(right-justified; ASCII byte와 같은 방식). 그러므로 만약 32 bit짜리 값을 가지고 있을 때에는, byte의 7 bit로 나누어야 된다. 물론 integer 값이 뭔지에 따라 다양한 byte의 숫자를 받게 될 수 있다. byte의 마지막을 알 수 있도록 bit #7은 비워둔다. bit #7 앞에 모든 byte가 있는 것이다.

그래서, integer가 0과 127 사이일때, 이 값은 하나의 byte로 표현될 수 있다. VLQ는 정해지지 않은 크기의 숫자도 다룰 수 있지만, 이번 연습에서는 32 bit의 양의 정수로 제한하도록 하겠다. 아래는 32 bit의 정수값 예시와 VLQ로 변환한 것이다.


```
 NUMBER        VARIABLE QUANTITY
00000000              00
00000040              40
0000007F              7F
00000080             81 00
00002000             C0 00
00003FFF             FF 7F
00004000           81 80 00
00100000           C0 80 00
001FFFFF           FF FF 7F
00200000          81 80 80 00
08000000          C0 80 80 00
0FFFFFFF          FF FF FF 7F
```
