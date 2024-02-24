// import 'dart:indexed_db';

// class Hasttable {
//   late List<dynamic> table;
//   int size;

//   Hasttable(this.size) {
//     table = List<dynamic>.filled(size, []);
//   }

//   int hash(String key) {
//     int total = 0;
//     for (int i = 0; i < key.length; i++) {
//       total += key.codeUnitAt(i);
//     }
//     return total % size;
//   }

//   void set(String key, dynamic value) {
//     final index = hash(key);
//     final bucket = table[index];
//     if (bucket.isEmpty) {
//       table[index] = [
//         [key, value]
//       ];
//     } else {
//       final sameKeyItem =
//           bucket.firstWhere((item) => item[0] == key, orElse: () == []);
//       print('same key $sameKeyItem');
//       if (sameKeyItem.isNotEmpty) {
//         sameKeyItem[1] = value;
//       } else {
//         bucket.add([key, value]);
//       }
//     }
//   }

//   dynamic get(String key) {
//     final index = hash(key);
//     final bucket = table[index];
//     if (bucket.isEmpty) {
//       final sameKeyItem =
//           bucket.firstWhere((item) => item[0] == key, orElse: () == []);
//       if (sameKeyItem.isNotEmpty) {
//         return sameKeyItem[1];
//       }
//     }
//     return null;
//   }
//   void remove(String key){
//     final Index
//   }
// }

bubbleSort(List<int> arr) {
  bool swapped;
  do {
    swapped = false;
    for (int i = 0; i < arr.length - 1; i++) {
      if (arr[i] > arr[i + 1]) {
        int temp = arr[i + 1];
        arr[i + 1] = arr[i];
        arr[i] = temp;
        swapped = true;
      }
    }
  } while (swapped == true);
  return arr;
}

void main() {
  List<int> arr = [-6, 20, 8, -2, 4];
  List<int> result = bubbleSort(arr);
  print(result);
}
