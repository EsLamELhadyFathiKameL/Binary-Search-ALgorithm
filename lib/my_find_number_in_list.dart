void main() {
  print(
    // Output = 4 .
    myFindNumberInList(numbersList: [20, 15, 10, 8, 5, 2, 1], number: 5),
  );
  print(
    // Output = -1 Because The Number Not Found In The List
    myFindNumberInList(numbersList: [20, 15, 10, 8, 4, 2, 1], number: 5),
  );
  print(
    // Output = -1 Because The List Is Empty.
    myFindNumberInList(numbersList: [], number: 5),
  );
}

// Time CompLexity ===>>> Big O ( Log2 n ).
int myFindNumberInList({
  required List<int> numbersList,
  required int number,
}) {
  if (numbersList.isEmpty) {
    return -1;
  }
  int low = 0;
  int high = numbersList.length - 1;
  while (low <= high) {
    int mid = (low + high) ~/ 2;
    if (number == numbersList[mid]) {
      return mid;
    } else if (number < numbersList[mid]) {
      low = mid + 1;
    } else {
      high = mid - 1;
    }
  }
  return -1;
}
