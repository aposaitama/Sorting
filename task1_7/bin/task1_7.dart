import 'dart:math';

class SortingAlgo {
  static bubbleSort(List dataList) {
    final stopwatch = Stopwatch()..start();
    for (int i = 0; i < dataList.length; i++) {
      for (int j = 0; j < dataList.length - i - 1; j++) {
        if (dataList[j] > dataList[j + 1]) {
          int cache = dataList[j];
          dataList[j] = dataList[j + 1];
          dataList[j + 1] = cache;
        }
      }
    }
    stopwatch.stop();
    print('sorting time by using bubble sort is: ${stopwatch.elapsed}');
  }

  static selectionSort(List dataList) {
    final stopwatch = Stopwatch()..start();
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
    stopwatch.stop();
    print('sorting time by using selection sort is: ${stopwatch.elapsed}');
  }

  static insetrionSort(List dataList) {
    final stopwatch = Stopwatch()..start();
    for (int i = 1; i < dataList.length; i++) {
      int key = dataList[i];
      int j = i - 1;
      while (j >= 0 && key < dataList[j]) {
        dataList[j + 1] = dataList[j];
        j = j - 1;
      }
      dataList[j + 1] = key;
    }
    stopwatch.stop();
    print('sorting time by using selection sort is: ${stopwatch.elapsed}');
  }

  static shellSort(List dataList) {
    final stopwatch = Stopwatch()..start();
    int n = dataList.length;
    for (int gap = n ~/ 2; gap > 0; gap ~/= 2) {
      for (int i = gap; i < n; i++) {
        int temp = dataList[i];
        int j = i;
        while (j >= gap && dataList[j - gap] > temp) {
          dataList[j] = dataList[j - gap];
          j -= gap;
        }
        dataList[j] = temp;
      }
    }
    stopwatch.stop();
    print('sorting time by using shell sort is: ${stopwatch.elapsed}');
  }
}

void main() {
  final rng = Random();

  SortingAlgo.bubbleSort(List.generate(8000, (_) => rng.nextInt(100)));
  SortingAlgo.selectionSort(List.generate(8000, (_) => rng.nextInt(100)));
  SortingAlgo.insetrionSort(List.generate(8000, (_) => rng.nextInt(100)));
  SortingAlgo.shellSort(List.generate(8000, (_) => rng.nextInt(100)));
}
