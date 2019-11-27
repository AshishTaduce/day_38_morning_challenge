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

List<dynamic> findAllPermutations(List input) {

  List permutations = [];

  void permutate(List list, int cursor) {

    if (cursor == list.length) {
      permutations.add(list);
      return;
    }
    else{
      for (int i = cursor; i < list.length; i++) {
        List permutation = List.from(list);
        permutation[cursor] = list[i];
        permutation[i] = list[cursor];
        //print(permutation);
        //permutations.add(permutation);
        permutate(permutation, cursor + 1);
      }
    }

  }

  permutate(input, 0);

  return permutations;
}

main() {
  List list = [1,2,3];
//  List a = [[0],[0]];
//  print(a.toSet());
  print(findAllPermutations(list));
}
