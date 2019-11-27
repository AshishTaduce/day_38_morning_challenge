// Challenge: Find all permutations
// Given a collection of *distinct* integers, return all possible permutations.
/// Example:

//  Input: [1,2,3]

//  Output:
//  [
//    [1,2,3],
//    [1,3,2],
//    [2,1,3],
//    [2,3,1],
//    [3,1,2],
//    [3,2,1]
//  ]

///

//List<List<int>> findAllPermutation(List<int> list){
//  List permutations  = [];
//  for (int i = 0; i < list.length; i++){
//    int element = list[1];
//    int temp = element;
//    list.remove(element);
//    List<int> tempList = list;
//    list.insert(i, element);
//    print(i);
//    print (temp);
//    for (int j = 0; j < tempList.length; j++){
//      //List i = tempList;
//      tempList.insert(j, list[i]);
//      permutations.add(tempList.toSet());
//      print(permutations);
//     // tempList = i;
//    }
//  }
//  return permutations;
//}

List<dynamic> findAllPermutations(String source) {
  List permutations = [];

  void permutate(List list, int cursor) {
    // when the cursor gets this far, we've found one permutation, so save it
    if (cursor == list.length) {
      permutations.add(list);
      return;
    }
    else{
      for (int i = cursor; i < list.length; i++) {
        List permutation = List.from(list);
        permutation[cursor] = list[i];
        permutation[i] = list[cursor];
        print(permutation);
        //permutations.add(permutation);
        permutate(permutation, cursor + 1);
      }
    }

  }

  permutate(source.split(''), 0);

  return permutations;
}

main() {

  List list = [1,2,3,5,6];
String source = '';
for (int x in list){
  source = source + x.toString();
}
print(int.parse(source));
print(findAllPermutations(source));
}
