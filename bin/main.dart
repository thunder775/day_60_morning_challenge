/// day 60 remove first and last occurrence
String clipString(String row) {
  List<String> rowList = row.split('').toList();
  if (row.length == 0) return '';
  String first = rowList[0];

  while (rowList.isNotEmpty && rowList.first == first) {
//    row = row.substring(1, row.length);
    rowList.removeAt(0);
  }
  while (rowList.isNotEmpty && rowList.last == first) {
//    row = row.substring(0, row.length - 1);
    rowList.removeLast();
  }
  return rowList.join();
}

int findLayers(List<String> matrix) {
//  matrix.forEach((string)=>print(string));
  int layerCount = 0;
  while (matrix.any((string) => string.isNotEmpty)) {
    for (int i = 0; i < matrix.length; i++) {
      matrix[i] = clipString(matrix[i]);
    }
    layerCount++;
//    matrix.forEach((string)=>print(string));
  }
    return layerCount;
  }


void main() {
  print(clipString("AABCCBAA"));

  print(findLayers([
    "AAAAAAAAAAA",
    "AABBBBBBBAA",
    "AABCCCCCBAA",
    "AABCAAACBAA",
    "AABCADACBAA",
    "AABCAAACBAA",
    "AABCCCCCBAA",
    "AABBBBBBBAA",
    "AAAAAAAAAAA",
  ]));
}
