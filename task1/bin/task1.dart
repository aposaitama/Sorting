//bubble sort
//algo compare two neighbour and if one of them don't  meet the condition, then they are swapped and continue comparing.

class BubbleSort {
  final dataList = [72, 13, 47, 89, 6, 34, 51, 92, 23, 15, 67, 38, 90, 12, 56];

  void bubbleSort() {
    for (int i = 0; i < dataList.length; i++) {
      for (int j = 0; j < dataList.length - i - 1; j++) {
        if (dataList[j] > dataList[j + 1]) {
          int cache = dataList[j];
          dataList[j] = dataList[j + 1];
          dataList[j + 1] = cache;
        }
      }
    }
  }
}

//selection sort
//selects the smallest element from an unsorted list in each iteration and places that element at the begining of the unsorted list
class SelectionSort {
  final dataList = [72, 13, 47, 89, 6, 34, 51, 92, 23, 15, 67, 38, 90, 12, 56];
  void selectionSort() {
    for (int i = 0; i < dataList.length; i++) {
      int minIndex = i;
      for (int j = i + 1; j < dataList.length; j++) {
        if (dataList[j] < dataList[minIndex]) {
          minIndex = j;
        }
      }
      int cache = dataList[i];
      dataList[i] = dataList[minIndex];
      dataList[minIndex] = cache;
    }
  }
}

//insertionSort
//places an unsorted element at it's suitable place in each iteration

class InsertionSort {
  final dataList = [72, 13, 47, 89, 6, 34, 51, 92, 23, 15, 67, 38, 90, 12, 56];
  void insertionSort() {
    for (int i = 1; i < dataList.length; i++) {
      int key = dataList[i];
      int j = i - 1;
      while (j >= 0 && key < dataList[j]) {
        dataList[j + 1] = dataList[j];
        j = j - 1;
      }
      dataList[j + 1] = key;
    }
  }
}

class LinearSearch {
  final dataList;
  final indexKey;
  LinearSearch(this.dataList, this.indexKey);

  linearSearch() {
    for (int i = 0; i < dataList.length; i++) {
      if (dataList[i] == indexKey) {
        return i;
      }
    }
  }
}

//binary search
//so, we need already sorted array, because binarysearch works by dividing array in two half, then check if elem is < or > then the middle elemnt of sorted array
class BinarySearch {
  final dataList;
  final indexKey;
  BinarySearch(this.dataList, this.indexKey);

  binarySearch() {
    int lowerListElemIndex = dataList[0];
    int higherListElemIndex = dataList[dataList.length - 1];
    while (lowerListElemIndex <= higherListElemIndex) {
      int middleListElemIndex = lowerListElemIndex +
          ((higherListElemIndex - lowerListElemIndex) / 2).floor();
      if (dataList[middleListElemIndex] == indexKey) {
        return middleListElemIndex;
      } else if (dataList[middleListElemIndex] > indexKey) {
        higherListElemIndex = middleListElemIndex - 1;
      } else
        lowerListElemIndex = middleListElemIndex + 1;
    }
  }
}

void main() {
  //binary search

  //linearSearch
  // final linearSearch = LinearSearch(
  //     [72, 13, 47, 89, 6, 34, 51, 92, 23, 15, 67, 38, 90, 12, 56], 34);
  // print(linearSearch.linearSearch());
  //bubble sort
  final bubbleSort = BubbleSort();
  print(bubbleSort.dataList);
  bubbleSort.bubbleSort();
  print(bubbleSort.dataList);

  final linearSearch = LinearSearch(bubbleSort.dataList, 15);
  print(linearSearch.linearSearch());

  // //selection sort
  // final selectionSort = SelectionSort();
  // print(selectionSort.dataList);
  // selectionSort.selectionSort();
  // print(selectionSort.dataList);

  //insertionSort
  // final insertionSort = InsertionSort();
  // print(insertionSort.dataList);
  // insertionSort.insertionSort();
  // print(insertionSort.dataList);
}
