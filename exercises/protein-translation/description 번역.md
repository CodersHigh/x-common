RNA 염기순서를 보고 어떤 단백질을 의미하는지 확인해봅시다.
[general ref](http://en.wikipedia.org/wiki/Translation_(biology))

RNA는 코돈이라고 불리는 3개의 뉴클레오타이드들로 쪼개지며, 이것은 폴리펩타이드를 의미합니다. 예를 들어: 

RNA: `"AUGUUUUCU"` => 번역하면

코돈: `"AUG", "UUU", "UCU"`
=> 이는 다음 서열을 같는 폴리펩타이드가 됩니다. =>

단백질: `"메티오닌", "페닐알라닌", "세린"`
 
20개의 아미노산에 해당하는 64가지의 코돈이 있습니다; 하지만, 이 문제에서 모든 코돈 서열과 그 아미노산이 중요한건 아닙니다. 

그리고, 코돈 중에는 4가지 '종료 코돈'이 있습니다; 만약 리보솜이 이 종료 코돈을 만나면 작업을 마치고 여기서 단백질이 끝납니다. 


그럼 그 뒤의 모든 코돈은 무시됩니다. 예를 들면:

RNA: `"AUGUUUUCUUAAAUG"` =>

코돈: `"AUG", "UUU", "UCU", "UAG", "AUG"` => 

단백질: `"메티오닌", "페닐알라닌", "세린"`

종료 코돈은 이 번역 과정을 멈추고, 마지막에 있는 메티오닌은 이 단백질 서열에 포함되지 않는다는 것을 알아두세요.

아래 표는 이 문제에 필요한 코돈과 그에 해당하는 아미노산들입니다. 

코돈                 | 단백질
:---                  | :---
AUG                   | 메티오닌(Methionine)
UUU, UUC              | 페닐알라닌(Phenylalanine)
UUA, UUG              | 류신(Leucine)
UCU, UCC, UCA, UCG    | 세린(Serine)
UAU, UAC              | 타이로신(Tyrosine)
UGU, UGC              | 시스테인(Cysteine)
UGG                   | 트립토판(Tryptophan)
UAA, UAG, UGA         | 종료(STOP)
