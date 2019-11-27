import 'package:test/test.dart';

import '../bin/main.dart';

void main() {
  test('Test Case 1', () {
    expect(findAllPermutations([1]),
        [
          [1]
        ]);
    List permutationSorted = findAllPermutations([1, 2, 3]);
    permutationSorted.sort;
    expect(permutationSorted,
        [[1, 2, 3], [1, 3, 2], [2, 1, 3], [2, 3, 1], [3, 2, 1], [3, 1, 2]]);
    expect((findAllPermutations([1, 2, 3, 4])).length,
        24);
    //Test to check repetition.
//    List copyList = List.from(findAllPermutations([1,2,3,4]));
//    expect(findAllPermutations([1]),
//        [
//      [1]
//    ]);
  });
}
