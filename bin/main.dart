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


List permutations = [];
//List<List<int>> findAllPermutations(List<int> input, ) {
//  List permutations = [];
//  if (input.length == 1) {
//    permutations.add(input);
//    return permutations;
//  }
//  else {
//    for (int i = 0; i < input.length; i++) {
//      for (int j = 0; j < input.length; j++) {
//        List<int> permutation = List.from(input);
//        permutation[j] = input[i];
//        permutation[i] = input[j];
//        print(permutation);
//
//        permutations.add(permutation);
//        //findAllPermutations(permutation);
//
//      }
//    }
//    return permutations;
//  }
//}


List<List<int>> findAllPermutations(List<int> input,) {
  List<List<int>> permutations = [];
  if (input.length == 1) {
    return [input];
  }
  else {
    for (int i = 0; i < input.length; i++) {
      List<int> copy = List.from(input);
      copy.removeAt(i);
      List list = findAllPermutations(copy);
      //print(list);
      for (List <int> permutes in list) {
        print(permutes);
        permutes.insert(0, input[i]);
        permutations.add(permutes);
      }
    }
  }
  return permutations;
}


main() {
  List<int> list = [1, 2, 3];

  print(findAllPermutations(list));
}
