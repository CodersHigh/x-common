# 회전식 암호(Rotational Cipher)

카이사르 암호(Caesar cipher)라고 불리는 회전식 암호를 구현해주세요.


카이사르 암호는 `0`과 `26` 사이의 정수 키를 이용하여 알파벳의 모든 문자를 변환하는 간단한 이동암호(shift cipher)입니다. 모듈러 산술때문에 `0` 또는 `26`의 키를 사용하면 항상 동일한 출력이 나옵니다. 문자는 키의 값만큼 이동됩니다.

회전식 암호의 일반적인 표기법은 `ROT + <key>`가 있습니다. 가장 흔하게 쓰이는 회전식 암호는 `ROT13`입니다.

라틴 알파벳의 `ROT13`은 다음과 같습니다 :

```plain
보통:  abcdefghijklmnopqrstuvwxyz
암호: nopqrstuvwxyzabcdefghijklm
```

이 방식은 27개의 가능한 키와 25개의 사용 가능한 키가 있기 때문에, 아트바쉬 암호(Atbash cipher)보다 강력합니다.

암호문은 공백과 구두점을 포함하여 입력과 동일한 형태로 기록됩니다.

## 예시
- ROT5  `omg` -> `trl`
- ROT0  `c` -> `c`
- ROT26 `Cool` -> `Cool`
- ROT13 `The quick brown fox jumps over the lazy dog.` -> `Gur dhvpx oebja sbk whzcf bire gur ynml qbt.`
- ROT13 `Gur dhvpx oebja sbk whzcf bire gur ynml qbt.` -> `The quick brown fox jumps over the lazy dog.`
