일부 웹 포럼은 나무 구조(tree layout)로 이루어져서, 게시물이 나무처럼 표현됩니다. 하지만 정작 게시물은 일반적으로 기록 집합의 분류되지 않는 형태로 데이터베이스에 저장됩니다. 그러므로 사용자에게 게시물을 보여줄 때에는 나무 구조는 다시 재구성되는 과정을 거쳐야만 합니다.

여기서 우리가 해야할 일은 작동은 하지만 느리고 말끔하지 않은 코드 조각을 다시 작업해서 고도로 추상화된 기록을 위한 나무 구조 로직을 구축하는 것입니다. 기록(record)은 ID 숫자와 부모(parent) ID 숫자만을 가지고 있습니다. ID 숫자는 항상 0 이상이고 기록 리스트의 길이보다는 작습니다. 뿌리 기록(root record)을 제외한 모든 기록은 자신의 ID보다 낮은 부모 ID 숫자를 가지고 있습니다. 뿌리 기록의 ID는 부도 ID 숫자와 같습니다.

예시 나무:

<pre>
root (ID: 0, parent ID: 0)
|-- child1 (ID: 1, parent ID: 0)
|    |-- grandchild1 (ID: 2, parent ID: 1)
|    +-- grandchild2 (ID: 4, parent ID: 1)
+-- child2 (ID: 3, parent ID: 0)
|    +-- grandchild3 (ID: 6, parent ID: 3)
+-- child3 (ID: 5, parent ID: 0)
</pre>
