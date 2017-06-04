[Zippers](https://en.wikipedia.org/wiki/Zipper_%28data_structure%29)는 순수하게 데이터 구조를 탐색하고 조작하는 기능을 가지고 있습니다. 이것은 데이터 구조를 가지고 있어야 하고, 그 구조를 가리키는 pointer가 있어야 합니다(focus라고 부름).

예를 들어 장미나무(각 노드가 값 하나와 자식 노드들의 리스트를 가지고 있는 나무 구조)가 주어졌다면, Zipper는 다음과 같은 작동을 지원할 것입니다.

- `from_tree` (Zipper가 장미나무 바깥에서 Zipper를 가져오고, focus은 뿌리노드 위에 있습니다.)
- `to_tree` (장미나무를 Zipper 바깥에서 가져옵니다.)
- `value` (focus 노드의 값을 가져옵니다.)
- `prev` (focus을 같은 부모의 이전 자식으로 옮깁니다.)
- `next` (focus을 같은 부모의 다음 자식으로 옮겨 새로운 Zipper를 도출합니다.)
- `up` (focus을 부모에게 옮겨 새로운 zipper를 도출합니다.)
- `set_value` (focus 노드의 값을 설정해서 새로운 zipper를 도출합니다.)
- `insert_before` (focus 노드 전에 새로운 subtree를 삽입합니다. 이는 focus노드의 `prev`가 되고 새로운 zipper를 도출합니다.)
- `insert_after` (focus 노드 뒤에 새로운 subtree를 삽입합니다. 이는 focus노드의 `next`가 되고 새로운 zipper를 도출합니다.)
- `delete` (focus 노드와 모든 subtree를 삭제하고, 만약 가능하다면 focus은 `next` 노드로 옮겨지고, 아니면 `prev` 노드로 욺겨집니다. 혹은 가능하다면 부모 노드로 옮겨지고 새로운 zipper를 도출합니다.)
