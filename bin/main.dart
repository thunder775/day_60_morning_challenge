/// day 60 remove first and last occurrence
String clipString(String row) {
  if(row.length==0) return '';
  String first = row[0];

  while (row.startsWith(first) || row.endsWith(first)) {
    if (row.startsWith(first)) {
      row = row.substring(1, row.length);
    }
    if (row.endsWith(first)) {
      row = row.substring(0, row.length - 1);
    }
  }
  return row;
}

int findLayers(List<String> matrix) {
  matrix.forEach((string)=>print(string));
  int layerCount = 0;
  while (matrix.any((string)=>string.isNotEmpty)) {
    for (int i = 0; i < matrix.length; i++) {
      matrix[i] = clipString(matrix[i]);
    }
    layerCount++;
    matrix.forEach((string)=>print(string));
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
